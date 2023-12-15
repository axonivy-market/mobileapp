import 'dart:async';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/list_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/app/app_config.dart';
import '../../../core/di/di_setup.dart';
import '../../../core/utils/shared_preference.dart';
import '../../../data/models/task/task.dart';
import '../../../data/repositories/task_repository.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;
  TaskBloc(this._taskRepository) : super(const TaskState.loading(false)) {
    on<_GetTasks>(_getTasks);
    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
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
          if (r.isNotEmptyOrNull) {
            emit(TaskState.success(_sortDefaultTasks(r)));
          } else {
            emit(const TaskState.empty());
          }
        },
      );
    } catch (e) {
      emit(TaskState.error(AppError.handle(e).failure.message));
    }
  }

  List<TaskIvy> _sortDefaultTasks(List<TaskIvy> tasks) {
    tasks.sort((l, r) => l.priority.compareTo(r.priority));

    for (int i = 0; i < tasks.length; i++) {
      int j = i + 1;
      while (j < tasks.length && tasks[j].priority == tasks[i].priority) {
        j++;
      }
      tasks.sublist(i, j).sort(
        (l, r) {
          if (l.expiryTimeStamp != null && r.expiryTimeStamp != null) {
            return r.expiryTimeStamp!.compareTo(l.expiryTimeStamp!);
          } else if (l.expiryTimeStamp != null && r.expiryTimeStamp == null) {
            return 1;
          } else {
            return 0;
          }
        },
      );
      i = j - 1;
    }
    return tasks;
  }
}
