import 'dart:async';
import 'package:axon_ivy/core/shared/extensions/list_ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/network/dio_error_handler.dart';
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

  List<TaskIvy> tasks = [];

  FutureOr<void> _getTasks(event, Emitter emit) async {
    emit(const TaskState.loading(true));

    try {
      final tasks = await _taskRepository.getTasks();

      tasks.fold(
        (l) => emit(TaskState.error(l)),
        (r) {
          this.tasks = r;
          emit(TaskState.success(r));
        },
      );
    } on AppError catch (e) {
      emit(TaskState.error(e));
    }
  }
}
