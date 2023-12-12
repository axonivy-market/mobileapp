import 'dart:async';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/list_ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
    tasks.sort((l, r) => r.priority.compareTo(l.priority));

    for (int i = 0; i < tasks.length; i++) {
      int j = i + 1;
      while (j < tasks.length && tasks[j].priority == tasks[i].priority) {
        j++;
      }
      tasks.sublist(i, j).sort(
        (l, r) {
          if (l.expiredTimeStamp != null && r.expiredTimeStamp != null) {
            return r.expiredTimeStamp!.compareTo(l.expiredTimeStamp!);
          } else if (l.expiredTimeStamp != null && r.expiredTimeStamp == null) {
            return 1; // null sắp sau
          } else {
            return 0; // cả hai đều null
          }
        },
      );
      i = j - 1;
    }
    return tasks;
  }
}
