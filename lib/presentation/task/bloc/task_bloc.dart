import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/extensions.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/data/repositories/task/task_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/app/app.dart';
import '../../../core/utils/shared_preference.dart';
import '../../../util/resources/resources.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;

part 'task_event.dart';

part 'task_state.dart';

part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;
  static List<TaskIvy> tasks = [];
  List<TaskIvy> tasks1 = [];
  List<TaskIvy> sortDefaultTasks = [];
  List<TaskIvy> expiredTasks = [];
  FilterType activeFilter = FilterType.all;
  bool isFirstTimeFetch = true;
  int taskCount = 0;

  List<SortType> activeSortType = [
    MainSortType.priority,
    SubSortType.mostImportant
  ];

  TaskBloc(this._taskRepository) : super(const TaskState.loading(false)) {
    on<_GetTasks>(_getTasks);
    on<_FilterTasks>(_filterTasks);
    on<_SortTasks>(_sortTasks);

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  void _sortTasks(event, Emitter emit) {
    emit(const TaskState.loading(true));
    activeSortType = event.activeSortType;
    if (tasks.isNotEmpty) {
      emit(TaskState.success(_sortTasksLocal(
          event.activeSortType[0], event.activeSortType[1], false)));
    }
  }

  List<TaskIvy> _sortTasksLocal(
      MainSortType mainType, SubSortType subType, bool isOffline) {
    List<TaskIvy> taskIvys =
        (activeFilter == FilterType.all ? tasks : expiredTasks);
    final sortedTasks = isOffline
        ? taskIvys.where((element) => element.offline).toList()
        : taskIvys;
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
    emit(const TaskState.loading(true));
    activeFilter = event.activeFilter;
    switch (event.activeFilter) {
      case FilterType.all:
        if (tasks.isNotEmpty) {
          emit(TaskState.success(_sortTasksLocal(
              activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!,
              false)));
        }
      case FilterType.expired:
        if (expiredTasks.isNotEmpty) {
          emit(TaskState.success(_sortTasksLocal(
              activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!,
              false)));
        } else {
          expiredTasks = _filterExpiredTasks(tasks);
          emit(TaskState.success(_sortTasksLocal(
              activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!,
              false)));
        }
    }
  }

  FutureOr<void> _getTasks(event, Emitter emit) async {
    emit(const TaskState.loading(true));

    try {
      for (var taskIvy in tasks) {
        if (taskIvy.taskDone) {
          await syncData(taskIvy);
        }
      }

      print("===get task");

      final taskR = await _taskRepository.getTasks();

      taskR.fold(
        (l) {
          // emit(
          //   TaskState.error(l.message),
          // );
        },
        (r) {
          tasks1.clear();
          tasks.clear();
          tasks1.addAll(r);
          taskCount = r.length;
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
        },
      );
      final connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.none) {
        final offlineTasks = tasks.where((element) => element.offline).toList();
        sortDefaultTasks = offlineTasks.sortDefaultTasks;
        expiredTasks = _filterExpiredTasks(offlineTasks);
        emit(TaskState.success(_sortTasksLocal(
            activeSortType.getMainSortType()!,
            activeSortType.getSubTypeActive()!,
            true)));
        return;
      } else {}
      List<Future<void>> futures = tasks1.map((taskIvy) {
        return fetchAndParseHTML(taskIvy);
      }).toList();
      await Future.wait(futures);

      print("----done");
      sortDefaultTasks = tasks.sortDefaultTasks;
      expiredTasks = _filterExpiredTasks(tasks);
      emit(TaskState.success(_sortTasksLocal(activeSortType.getMainSortType()!,
          activeSortType.getSubTypeActive()!, false)));
    } catch (e) {
      final offlineTasks = tasks.where((element) => element.offline).toList();
      sortDefaultTasks = offlineTasks.sortDefaultTasks;
      expiredTasks = _filterExpiredTasks(offlineTasks);
      emit(TaskState.success(_sortTasksLocal(activeSortType.getMainSortType()!,
          activeSortType.getSubTypeActive()!, true)));
      // emit(
      //   TaskState.error(AppError.handle(e).failure.message),
      // );
    }
  }

  List<TaskIvy> _filterExpiredTasks(List<TaskIvy> tasks) {
    if (tasks.isEmpty) return tasks;
    return tasks.where((task) => task.expiryTimeStamp.isExpired).toList();
  }

  Future<void> fetchAndParseHTML(TaskIvy taskIvy) async {
    final username = SharedPrefs.getUsername;
    final password = SharedPrefs.getPassword;
    final headers = {
      HttpHeaders.authorizationHeader:
          'Basic ${base64Encode(utf8.encode('$username:$password'))}',
    };
    final response =
        await http.get(Uri.parse(taskIvy.fullRequestPath), headers: headers);

    if (response.statusCode == 200) {
      final submitUrl = _getFormAction(response.body);
      print("===>>> $submitUrl");
      final task = taskIvy.copyWith(
          submitUrl: SharedPrefs.getBaseUrl! + submitUrl,
          formHTMLPage: response.body);
      tasks.add(task);
    } else {
      tasks.add(taskIvy);
    }
  }

  Future<void> syncData(TaskIvy taskIvy) async {
    final username = SharedPrefs.getUsername;
    final password = SharedPrefs.getPassword;
    final headers = {
      'Authorization':
          'Basic ${base64Encode(utf8.encode('$username:$password'))}',
      'Accept': 'application/json, */*',
      'X-Requested-By': 'mobile',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    var body = {
      'form:proceed': '',
      'form_SUBMIT': '1',
      'javax.faces.ViewState':
          'jkYbGyJRVstY8tSzEUpCmUVrwe/wW9U6R1oEuDC4C/jPqo2I66wnWBI30iH6ieO4q1qO4bTo2i4dy7Qw31Hv327ATzpJDWLgY9nMvRYuVt/p2fGu3FF3Yw7/MT4t8aplWqGRF63+/SEGeby/lEcoye7LVU375REJa8+ZWuPGLcbnlYB8a1p8M0po5t80XMxQ3uoOjwiSHv+XuH/Vh9s6+L/mpFRJdjznqoWgh6xZafjq3EmhewjrJ37t1CJ0JD21',
    };
    final response = await http.post(Uri.parse(taskIvy.submitUrl),
        headers: headers, body: body);
    // final response = await ioClient.send(request);
    print("====syncData====${response.statusCode}");
  }

  String _getFormAction(String htmlContent) {
    final document = htmlParser.parse(htmlContent);

    final forms = document.getElementsByTagName('form');

    for (final form in forms) {
      final action = form.attributes['action'];
      if (action != null) {
        return action;
      }
    }
    return "";
  }
}
