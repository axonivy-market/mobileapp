import 'dart:async';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
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
  List<TaskIvy> expiredTasks = [];
  FilterType activeFilter = FilterType.all;
  List<SortType> activeSortType = [SortType.priority, SortType.mostIm];
  List<SortType> mainItemSortType = [
    SortType.priority,
    SortType.creationDate,
    SortType.name,
    SortType.expiryDate
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
    activeSortType = event.activeSortType;

    emit(const TaskState.loading(true));
    if (event.activeSortType.contains(SortType.priority)) {
      if (event.activeSortType.contains(SortType.mostIm)) {
        emit(TaskState.success(
            _sortTasksLocal(SortType.priority, SortType.mostIm)));
      } else {
        emit(TaskState.success(
            _sortTasksLocal(SortType.priority, SortType.leastIm)));
      }
    } else if (event.activeSortType.contains(SortType.name)) {
      if (event.activeSortType.contains(SortType.aToZ)) {
        emit(TaskState.success(_sortTasksLocal(SortType.name, SortType.aToZ)));
      } else {
        emit(TaskState.success(_sortTasksLocal(SortType.name, SortType.zToA)));
      }
    } else if (event.activeSortType.contains(SortType.creationDate)) {
      if (event.activeSortType.contains(SortType.newest)) {
        emit(TaskState.success(
            _sortTasksLocal(SortType.creationDate, SortType.newest)));
      } else {
        emit(TaskState.success(
            _sortTasksLocal(SortType.creationDate, SortType.oldest)));
      }
    } else if (event.activeSortType.contains(SortType.expiryDate)) {
      if (event.activeSortType.contains(SortType.mostUrg)) {
        emit(TaskState.success(
            _sortTasksLocal(SortType.expiryDate, SortType.mostUrg)));
      } else {
        emit(TaskState.success(
            _sortTasksLocal(SortType.expiryDate, SortType.leastUrg)));
      }
    }
  }

  List<TaskIvy> _sortTasksLocal(SortType mainType, SortType subType) {
    List<TaskIvy> sortedTasks =
        activeFilter == FilterType.all ? tasks : expiredTasks;
    if (mainType == SortType.priority) {
      List<TaskIvy> priorityTasks = List.from(sortedTasks)
        ..sort((l, r) => l.priority.compareTo(r.priority));
      return subType == SortType.mostIm
          ? priorityTasks
          : priorityTasks.reversed.toList();
    } else if (mainType == SortType.name) {
      List<TaskIvy> nameTasks = List.from(sortedTasks)
        ..sort((l, r) => l.name.compareTo(r.name));
      return subType == SortType.aToZ ? nameTasks : nameTasks.reversed.toList();
    } else if (mainType == SortType.creationDate) {
      List<TaskIvy> creationDateTasks = List.from(sortedTasks)
        ..sort((l, r) => l.startTimeStamp.compareTo(r.startTimeStamp));
      return subType == SortType.newest
          ? creationDateTasks
          : creationDateTasks.reversed.toList();
    } else if (mainType == SortType.expiryDate) {
      List<TaskIvy> expiryDateTasks = List.from(sortedTasks);
      expiryDateTasks.sort((l, r) {
        if (l.expiryTimeStamp == null && r.expiryTimeStamp == null) {
          return 0;
        }
        if (l.expiryTimeStamp == null) return 1;
        if (r.expiryTimeStamp == null) return -1;
        return l.expiryTimeStamp!.compareTo(r.expiryTimeStamp!);
      });

      return subType == SortType.mostUrg
          ? expiryDateTasks
          : expiryDateTasks.reversed.toList();
    }

    return sortedTasks;
  }

  void _filterTasks(event, Emitter emit) {
    emit(const TaskState.loading(true));
    activeFilter = event.activeFilter;
    switch (event.activeFilter) {
      case FilterType.all:
        emit(TaskState.success(_sortTasksLocal(
            orderSortTypeList(activeSortType).first,
            orderSortTypeList(activeSortType)[1])));
      case FilterType.expired:
        if (expiredTasks.isNotEmpty) {
          emit(TaskState.success(_sortTasksLocal(
              orderSortTypeList(activeSortType).first,
              orderSortTypeList(activeSortType)[1])));
        } else {
          expiredTasks = _filterExpiredTasks(tasks);
          emit(TaskState.success(_sortTasksLocal(
              orderSortTypeList(activeSortType).first,
              orderSortTypeList(activeSortType)[1])));
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
          if (activeSortType.contains(SortType.priority) &&
              activeSortType.contains(SortType.mostIm)) {
            emit(TaskState.success(
                _filterTasksServer(event.activeFilter, r.sortDefaultTasks)));
          } else {
            emit(TaskState.success(_sortTasksLocal(
                orderSortTypeList(activeSortType).first,
                orderSortTypeList(activeSortType)[1])));
          }
        },
      );
    } catch (e) {
      emit(TaskState.error(AppError.handle(e).failure.message));
    }
  }

  List<SortType> orderSortTypeList(List<SortType> sortType) {
    if (mainItemSortType.contains(sortType.first)) {
      return sortType;
    }
    return sortType.reversed.toList();
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
