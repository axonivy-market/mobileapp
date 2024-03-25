import 'dart:async';

import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/core/extensions/extensions.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/usecases/get_tasks_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app/app.dart';
import '../../../../../core/util/resources/resources.dart';
import '../../../../../core/utils/shared_preference.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTaskListUseCase _taskRepository;
  List<TaskIvy> tasks = [];
  List<TaskIvy> sortDefaultTasks = [];
  List<TaskIvy> expiredTasks = [];
  FilterType activeFilter = FilterType.all;
  bool isFirstTimeFetch = true;

  List<SortType> activeSortType = [
    MainSortType.priority,
    SubSortType.mostImportant
  ];

  TaskBloc(this._taskRepository) : super(const TaskState.loading(false)) {
    on<_GetTasks>(_getTasks);
    on<_FilterTasks>(_filterTasks);
    on<_SortTasks>(_sortTasks);
    on<ShowOfflinePopupEvent>(_showOfflinePopupEvent);

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  void _sortTasks(event, Emitter emit) {
    activeSortType = event.activeSortType;
    if (tasks.isNotEmpty) {
      emit(TaskState.success(
          tasks: _sortTasksLocal(
              event.activeSortType[0], event.activeSortType[1])));
    }
  }

  List<TaskIvy> _sortTasksLocal(MainSortType mainType, SubSortType subType) {
    List<TaskIvy> sortedTasks =
        activeFilter == FilterType.all ? tasks : expiredTasks;
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
        if (tasks.isNotEmpty) {
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
          expiredTasks = _filterExpiredTasks(tasks);
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
          emit(TaskState.success(
              tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
                  activeSortType.getSubTypeActive()!),
              isOnline: false));
        },
        (r) {
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
          this.tasks = r;
          sortDefaultTasks = r.sortDefaultTasks;
          expiredTasks = _filterExpiredTasks(this.tasks);
          emit(TaskState.success(
              tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
                  activeSortType.getSubTypeActive()!)));
        },
      );
    } catch (e) {
      emit(TaskState.success(
          tasks: _sortTasksLocal(activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!),
          isOnline: false));
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
}
