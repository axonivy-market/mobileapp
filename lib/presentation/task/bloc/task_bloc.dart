import 'dart:async';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/sort_type_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/shared/extensions/task_ext.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/app/app_config.dart';
import '../../../core/di/di_setup.dart';
import '../../../core/utils/shared_preference.dart';
import '../../../data/models/task/task.dart';
import '../../../data/repositories/task_repository.dart';
import '../../../util/resources/constants.dart';

part 'task_event.dart';

part 'task_state.dart';

part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;
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

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  void _sortTasks(event, Emitter emit) {
    emit(const TaskState.loading(true));
    activeSortType = event.activeSortType;
    if (tasks.isNotEmpty) {
      emit(TaskState.success(
          _sortTasksLocal(event.activeSortType[0], event.activeSortType[1])));
    }
  }

  List<TaskIvy> _sortTasksLocal(MainSortType mainType, SubSortType subType) {
    List<TaskIvy> sortedTasks =
        activeFilter == FilterType.all ? tasks : expiredTasks;
    switch (mainType) {
      case MainSortType.priority:
        List<TaskIvy> priorityTasks = List.from(sortedTasks)
          ..sort((l, r) => l.priority.compareTo(r.priority));
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
          ..sort((l, r) => l.startTimeStamp.compareTo(r.startTimeStamp));
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
              activeSortType.getSubTypeActive()!)));
        }
      case FilterType.expired:
        if (expiredTasks.isNotEmpty) {
          emit(TaskState.success(_sortTasksLocal(
              activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!)));
        } else {
          expiredTasks = _filterExpiredTasks(tasks);
          emit(TaskState.success(_sortTasksLocal(
              activeSortType.getMainSortType()!,
              activeSortType.getSubTypeActive()!)));
        }
    }
  }

  FutureOr<void> _getTasks(event, Emitter emit) async {
    emit(const TaskState.loading(true));

    try {
      final tasks = await _taskRepository.getTasks();

      tasks.fold(
        (l) {
          emit(TaskState.error(l.message));
        },
        (r) {
          if (isFirstTimeFetch) {
            this.tasks = r;
            emit(TaskState.success(
                _filterTasksServer(event.activeFilter, r.sortDefaultTasks)));
            isFirstTimeFetch = false;
          } else if (event.isRefresh) {
            this.tasks = r;
            emit(TaskState.success(_filterTasksServer(
                event.activeFilter,
                _sortTasksLocal(activeSortType.getMainSortType()!,
                    activeSortType.getSubTypeActive()!))));
          } else {
            emit(TaskState.success(_sortTasksLocal(
                activeSortType.getMainSortType()!,
                activeSortType.getSubTypeActive()!)));
          }
        },
      );
    } catch (e) {
      emit(TaskState.error(AppError.handle(e).failure.message));
    }
  }

  List<TaskIvy> _filterExpiredTasks(List<TaskIvy> tasks) {
    if (tasks.isEmpty) return tasks;
    return tasks.where((task) => task.expiryTimeStamp.isExpired).toList();
  }

  List<TaskIvy> _filterTasksServer(FilterType filterType, List<TaskIvy> tasks) {
    if (filterType == FilterType.all) {
      this.tasks = tasks;
      return tasks;
    } else {
      expiredTasks = tasks
          .where((task) =>
              task.expiryTimeStamp != null && task.expiryTimeStamp.isExpired)
          .toList();
      return expiredTasks;
    }
  }
}
