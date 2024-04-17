import 'dart:async';
import 'dart:io';

import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/extensions.dart';
import 'package:axon_ivy/data/models/enums/file_local_state_enum.dart';
import 'package:axon_ivy/features/task/data/datasources/task_local_data_source.dart';
import 'package:axon_ivy/data/models/enums/task_state_enum.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/usecases/delete_file_use_case.dart';
import 'package:axon_ivy/features/task/domain/usecases/get_tasks_use_case.dart';
import 'package:axon_ivy/features/task/domain/usecases/upload_file_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app/app.dart';
import '../../../../../core/util/resources/resources.dart';
import '../../../../../core/utils/shared_preference.dart';
import 'package:html/parser.dart' as html_parser;

part 'task_bloc.freezed.dart';

part 'task_event.dart';

part 'task_state.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTaskListUseCase _taskRepository;
  final HiveTaskStorage _hiveTaskStorage;
  final UploadFileUseCase _uploadFileUseCase;
  final DeleteFileUseCase _deleteFileUseCase;
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

  TaskBloc(this._taskRepository, this._hiveTaskStorage, this._uploadFileUseCase,
      this._deleteFileUseCase)
      : super(const TaskState.loading(false)) {
    on<_GetTasks>(_getTasks);
    on<_FilterTasks>(_filterTasks);
    on<_SortTasks>(_sortTasks);
    on<ShowOfflinePopupEvent>(_showOfflinePopupEvent);
    on<ParseHtmlEvent>(_parseHtml);
    on<ShowTasksOfflineEvent>(_showTasksOffline);
    on<TasksLoadedSyncEvent>(_tasksLoadedSync);
    on<SyncDataOnEngineRestoreEvent>(_syncDataOnNetworkRestore);

    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    if (isDemoSetting) {
      getIt<Dio>().options.baseUrl = DemoConfig.demoServerUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : DemoConfig.demoServerUrl;
    } else {
      getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : SharedPrefs.getBaseUrl!;
    }
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

  Future<void> _getTasks(event, Emitter emit) async {
    if (state is TaskLoadingState &&
        (state as TaskLoadingState).isShowLoading) {
      return;
    }
    emit(const TaskState.loading(true));

    try {
      final tasks = await _taskRepository.execute();

      tasks.fold(
        (l) {
          isOfflineMode = true;
          add(const TaskEvent.showTasksOffline());
        },
        (r) {
          isOfflineMode = false;
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
          this.tasks.clear();
          this.tasks.addAll(r);
          // Sync data
          add(const TaskEvent.onTasksLoadedSync());
        },
      );
    } catch (e) {
      isOfflineMode = true;
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
    List<TaskIvy> tasksLocal = _hiveTaskStorage.getAllTasks();

    //TODO tach method??
    // Load task offline form from local DB
    for (int i = 0; i < tasks.length; i++) {
      int localTaskIndex =
          tasksLocal.indexWhere((task) => tasks[i].id == task.id);
      if (localTaskIndex != -1) {
        var destinationList = tasks[i].caseTask?.documents.toList() ?? [];
        var sourceList =
            tasksLocal[localTaskIndex].caseTask?.availableDocuments ?? [];
        for (int j = 0; j < sourceList.length; j++) {
          final source = sourceList[j];
          int index =
              destinationList.indexWhere((des) => des.name == source.name);
          if (index != -1) {
            destinationList[index] = destinationList[index]
                .copyWith(fileLocalData: sourceList[index].fileLocalData);
          } else {
            // TODO nếu local có mà server ko có thì có add local vào không???
            destinationList.add(source);
          }
        }
        var caseTask = tasks[i].caseTask?.copyWith(documents: destinationList);
        tasks[i] = tasks[i].copyWith(
            submitUrlOffline: tasksLocal[localTaskIndex].submitUrlOffline,
            formHTMLPageOffline: tasksLocal[localTaskIndex].formHTMLPageOffline,
            caseTask: caseTask);
        _hiveTaskStorage.addTask(tasks[i]);
      }
    }
    // download task form
    List<Future<void>> futures = tasks
        .where((taskServer) =>
            taskServer.offline && taskServer.submitUrlOffline.isEmptyOrNull)
        .map((taskIvy) {
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
    var urls = taskIvy.fullRequestPath.split(AppConfig.serverUrl);
    var requestUrl = urls.length > 1 ? urls[1] : "";
    final response = await dio.get(requestUrl);

    if (response.statusCode == 200) {
      final submitUrl = _getFormAction(response.data);
      final task = taskIvy.copyWith(
          submitUrlOffline: submitUrl, formHTMLPageOffline: response.data);
      // Update task for display on UI
      var index = tasks.indexWhere((element) => element.id == taskIvy.id);
      tasks.removeAt(index);
      tasks.add(task);
      _hiveTaskStorage.addTask(task);
    }
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
    isOfflineMode = true;
    var tasksOffline = _hiveTaskStorage
        .getAllTasks()
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
    _hiveTaskStorage
        .getAllTasks()
        .where((taskLocal) => !tasks.any((task) => task.id == taskLocal.id))
        .forEach((element) {
      _hiveTaskStorage.removeTask(element.id);
    });
    add(const TaskEvent.parseHtml());
  }

  Future<void> _syncDataOnNetworkRestore(event, emit) async {
    List<CaseTask?> caseTasks =
        _hiveTaskStorage.getAllCaseTasksPendingSyncFile();
    for (var caseTask in caseTasks) {
      caseTask?.documents.forEach((document) async {
        if (document.fileLocalState ==
            FileLocalStateEnum.kPendingUpload.value) {
          _uploadFile(caseTask.id, document);
        } else if (document.fileLocalState ==
            FileLocalStateEnum.kMarkedForDeletion.value) {
          _deleteFile(caseTask.id, document.id);
        }
      });
    }

    // sync task done to server
    List<Future<void>> tasksDoneFuture = _hiveTaskStorage
        .getAllTasks()
        .where((element) => element.state == TaskStateEnum.doneInOffline.value)
        .map((taskIvy) {
      return _finishTaskOffline(taskIvy);
    }).toList();
    await Future.wait(tasksDoneFuture);

    add(TaskEvent.getTasks(activeFilter));
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
        taskIvy.submitUrlOffline!,
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
        _hiveTaskStorage.removeTask(taskIvy.id);
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
        ? _hiveTaskStorage
            .getAllTasks()
            .where(
                (element) => element.state != TaskStateEnum.doneInOffline.value)
            .toList()
        : tasks;
  }

  Future _uploadFile(int caseId, Document document) async {
    try {
      FormData data = FormData.fromMap(
        {
          "file": MultipartFile.fromBytes(document.fileLocalData!,
              filename: document.name),
        },
      );
      final upload = await _uploadFileUseCase.execute(
          caseId: caseId,
          contentType: APIHeader.contentType,
          requestBy: APIHeader.requestBy,
          data: data);
      upload.fold((l) => null, (r) {
        var documentUploaded = document.copyWith(
            id: r.document.id,
            url: r.document.url,
            path: r.document.path,
            fileLocalState: FileLocalStateEnum.kNew.value);
        _hiveTaskStorage.updateDocumentByCase(caseId, documentUploaded);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future _deleteFile(int caseId, int documentId) async {
    try {
      final delete = await _deleteFileUseCase.execute(
        caseId,
        documentId,
        APIHeader.requestBy,
      );
      delete.fold((l) => null, (r) {
        _hiveTaskStorage.deleteDocument(caseId, r.document.name);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
