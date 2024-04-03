import 'dart:async';
import 'dart:io';
import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/core/shared/extensions/extensions.dart';
import 'package:axon_ivy/data/database/local_task_provider.dart';
import 'package:axon_ivy/data/models/enums/task_state_enum.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/app/app.dart';
import '../../../core/utils/shared_preference.dart';
import '../../../data/repositories/task/task_repository.dart';
import '../../../util/resources/resources.dart';
import 'package:html/parser.dart' as html_parser;

part 'task_bloc.freezed.dart';

part 'task_event.dart';

part 'task_state.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;
  final LocalTaskProvider _localTaskProvider;
  List<TaskIvy> tasks = [];
  List<TaskIvy> sortDefaultTasks = [];
  List<TaskIvy> expiredTasks = [];
  FilterType activeFilter = FilterType.all;
  bool isFirstTimeFetch = true;
  bool isOfflineMode = false;

  List<SortType> activeSortType = [
    MainSortType.priority,
    SubSortType.mostImportant
  ];

  TaskBloc(this._taskRepository, this._localTaskProvider)
      : super(const TaskState.loading(false)) {
    on<_GetTasks>(_getTasks);
    on<_FilterTasks>(_filterTasks);
    on<_SortTasks>(_sortTasks);
    on<ShowOfflinePopupEvent>(_showOfflinePopupEvent);
    on<ParseHtmlEvent>(_parseHtml);
    on<ShowTasksOfflineEvent>(_showTasksOffline);
    on<TasksLoadedSyncEvent>(_tasksLoadedSync);
    on<SyncDataOnEngineRestoreEvent>(_syncDataOnNetworkRestore);

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  void _sortTasks(event, Emitter emit) {
    activeSortType = event.activeSortType;
    if (getTasks().isNotEmpty) {
      emit(TaskState.success(
          tasks: _sortTasksLocal(
              event.activeSortType[0], event.activeSortType[1])));
    }
  }

  List<TaskIvy> _sortTasksLocal(MainSortType mainType, SubSortType subType) {
    List<TaskIvy> sortedTasks =
        activeFilter == FilterType.all ? getTasks() : expiredTasks;
    switch (mainType) {
      case MainSortType.priority:
        List<TaskIvy> priorityTasks = sortedTasks.sortDefaultTasks;
        return subType == SubSortType.mostImportant
            ? priorityTasks
            : priorityTasks.reversed.toList();
      case MainSortType.name:
        List<TaskIvy> nameTasks = List.from(sortedTasks)
          ..sort((l, r) => l.name.compareTo(r.name));
        return subType == SubSortType.aToZ
            ? nameTasks
            : nameTasks.reversed.toList();
      case MainSortType.creationDate:
        List<TaskIvy> creationDateTasks = List.from(sortedTasks)
          ..sort((l, r) => r.startTimeStamp.compareTo(l.startTimeStamp));
        return subType == SubSortType.newest
            ? creationDateTasks
            : creationDateTasks.reversed.toList();
      case MainSortType.expiryDate:
        List<TaskIvy> expiryDateTasks = List.from(sortedTasks);
        expiryDateTasks.sort((l, r) {
          if (l.expiryTimeStamp == null && r.expiryTimeStamp == null) {
            return 0;
          }
          if (l.expiryTimeStamp == null) return 1;
          if (r.expiryTimeStamp == null) return -1;
          return l.expiryTimeStamp!.compareTo(r.expiryTimeStamp!);
        });

        return subType == SubSortType.mostUrgent
            ? expiryDateTasks
            : expiryDateTasks.reversed.toList();
    }
  }

  void _filterTasks(event, Emitter emit) {
    activeFilter = event.activeFilter;
    switch (event.activeFilter) {
      case FilterType.all:
        if (getTasks().isNotEmpty) {
          emit(TaskState.success(
              tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
                  activeSortType.getSubTypeActive()!)));
        }
      case FilterType.expired:
        if (expiredTasks.isNotEmpty) {
          emit(TaskState.success(
              tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
                  activeSortType.getSubTypeActive()!)));
        } else {
          expiredTasks = _filterExpiredTasks(getTasks());
          emit(TaskState.success(
              tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
                  activeSortType.getSubTypeActive()!)));
        }
    }
  }

  FutureOr<void> _getTasks(event, Emitter emit) async {
    if (state is TaskLoadingState &&
        (state as TaskLoadingState).isShowLoading) {
      return;
    }
    emit(const TaskState.loading(true));

    try {
      final tasks = await _taskRepository.getTasks();

      tasks.fold(
        (l) {
          add(const TaskEvent.showTasksOffline());
        },
        (r) {
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
          this.tasks.clear();
          this.tasks.addAll(r);
          // Sync data
          add(const TaskEvent.onTasksLoadedSync());
        },
      );
    } catch (e) {
      add(const TaskEvent.showTasksOffline());
    }
  }

  List<TaskIvy> _filterExpiredTasks(List<TaskIvy> tasks) {
    if (tasks.isEmpty) return tasks;
    return tasks.where((task) => task.expiryTimeStamp.isExpired).toList();
  }

  void _showOfflinePopupEvent(event, Emitter emit) {
    emit(TaskState.success(
        tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
            activeSortType.getSubTypeActive()!),
        isOnline: event.isConnected));
  }

  Future<void> _parseHtml(event, Emitter emit) async {
    var tasksLocal = _localTaskProvider.taskList();

    // Load task offline form from local DB
    for (int i = 0; i < tasks.length; i++) {
      int localTaskIndex =
          tasksLocal.indexWhere((localUser) => tasks[i].id == localUser.id);
      if (localTaskIndex != -1) {
        tasks[i] = tasksLocal[localTaskIndex];
      }
    }
    // download task form
    //TODO test
    List<Future<void>> futures =
        tasks.where((taskServer) => taskServer.offline).map((taskIvy) {
      return downloadHTMLFromFullRequestPath(taskIvy);
    }).toList();
    await Future.wait(futures);
    sortDefaultTasks = tasks.sortDefaultTasks;
    expiredTasks = _filterExpiredTasks(tasks);
    emit(TaskState.success(
        tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
            activeSortType.getSubTypeActive()!)));
  }

  Future<void> downloadHTMLFromFullRequestPath(TaskIvy taskIvy) async {
    var dio = getIt<Dio>();
    final response = await dio.get(taskIvy.fullRequestPath);

    if (response.statusCode == 200 && SharedPrefs.getBaseUrl != null) {
      final submitUrl = _getFormAction(response.data);
      var cssHref = RegExp(r'<link[^>]*href="([^"]+)"')
          .allMatches(response.data)
          .map((match) => match.group(1))
          .toList();
      var jsHref = RegExp(r'<script[^>]*src="([^"]+)">')
          .allMatches(response.data)
          .map((match) => match.group(1))
          .toList();

      List<Future<void>> cssHrefFutures = cssHref.map((path) {
        return downloadResource(path);
      }).toList();
      List<Future<void>> jsHrefFutures = jsHref.map((path) {
        return downloadResource(path);
      }).toList();
      // await Future.wait(cssHrefFutures);
      // await Future.wait(jsHrefFutures);
      final task = taskIvy.copyWith(
          submitUrlOffline: submitUrl, formHTMLPageOffline: response.data);
      // Update task for display on UI
      var index = tasks.indexWhere((element) => element.id == taskIvy.id);
      tasks.removeAt(index);
      tasks.add(task);
      _localTaskProvider.addTask(task);
    }
  }

  Future<void> downloadResource(String? path) async {
    if (path.isEmptyOrNull) return;
    var dio = getIt<Dio>();
    final directory = await getApplicationDocumentsDirectory();
    final regex = RegExp(r'[^/]+(?=\?)|[^/]+$', caseSensitive: false);
    final match = regex.firstMatch(path!);
    final file = File('${directory.path}/${match?.group(0)}');
    final response = await dio.get(path);
    await file.writeAsString(response.data);
  }

  String _getFormAction(String htmlContent) {
    final document = html_parser.parse(htmlContent);

    final forms = document.getElementsByTagName('form');

    for (final form in forms) {
      final action = form.attributes['action'];
      if (action != null) {
        return action;
      }
    }
    return "";
  }

  Future<void> _showTasksOffline(event, Emitter emit) async {
    var tasksOffline = _localTaskProvider
        .taskList()
        .where((element) => element.state != TaskStateEnum.doneInOffline.value)
        .toList();
    sortDefaultTasks = tasksOffline.sortDefaultTasks;
    expiredTasks = _filterExpiredTasks(tasksOffline);
    emit(TaskState.success(
        tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
            activeSortType.getSubTypeActive()!),
        isOnline: false));
  }

  Future<void> _tasksLoadedSync(event, emit) async {
    // Remove tasks local for tasks done and uploaded from server
    _localTaskProvider
        .taskList()
        .where((taskLocal) => !tasks.any((task) => task.id == taskLocal.id))
        .forEach((element) {
      _localTaskProvider.removeTask(element.id);
    });

    // sync task done in offline to server
    List<Future<void>> tasksDoneFuture = _localTaskProvider
        .taskList()
        .where((element) => element.state == TaskStateEnum.doneInOffline.value)
        .map((taskIvy) {
      return _finishTaskOffline(taskIvy);
    }).toList();
    await Future.wait(tasksDoneFuture);

    add(const TaskEvent.parseHtml());
  }

  Future<void> _syncDataOnNetworkRestore(event, emit) async {
    // sync task done to server
    List<Future<void>> tasksDoneFuture = _localTaskProvider
        .taskList()
        .where((element) => element.state == TaskStateEnum.doneInOffline.value)
        .map((taskIvy) {
      return _finishTaskOffline(taskIvy);
    }).toList();
    await Future.wait(tasksDoneFuture);

    sortDefaultTasks = tasks.sortDefaultTasks;
    expiredTasks = _filterExpiredTasks(tasks);
    emit(TaskState.success(
        tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
            activeSortType.getSubTypeActive()!)));
  }

  Future<void> _finishTaskOffline(TaskIvy taskIvy) async {
    var dio = getIt<Dio>();
    final headers = {
      Constants.xRequestByHeader: Constants.xRequestBy,
      HttpHeaders.contentTypeHeader: Constants.formUrlEncodedContentType,
    };
    dio.options.headers = headers;
    try {
      final response = await dio.post(
        taskIvy.submitUrlOffline,
        data: taskIvy.doneTaskFormDataSerializedOffline,
      );
      String finishedTask =
          response.headers.map[Constants.ivyFinishedTask]?.first ?? "";
      String currentRunningTask =
          response.headers.map[Constants.ivyCurrentRunningTask]?.first ?? "";
      var isFinishedTask =
          finishedTask.isNotEmpty && currentRunningTask.isEmpty;
      if (isFinishedTask) {
        // remove task local after it sync done
        _localTaskProvider.removeTask(taskIvy.id);
        // remove tasks server current
        var taskDoneIdx = tasks.indexWhere((task) => task.id == taskIvy.id);
        tasks.removeAt(taskDoneIdx);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  List<TaskIvy> getTasks() {
    return isOfflineMode
        ? _localTaskProvider
            .taskList()
            .where(
                (element) => element.state != TaskStateEnum.doneInOffline.value)
            .toList()
        : tasks;
  }
}
