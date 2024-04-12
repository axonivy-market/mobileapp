import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/usecases/get_task_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_detail_bloc.freezed.dart';
part 'task_detail_event.dart';
part 'task_detail_state.dart';

@injectable
class TaskDetailBloc extends Bloc<TaskDetailEvent, TaskDetailState> {
  final GetTaskUseCase _taskRepository;
  TaskDetailBloc(this._taskRepository)
      : super(const TaskDetailState.loading()) {
    on<TaskDetailEvent>((event, emit) async {
      if (event is _GetTaskDetail) {
        await _getTaskDetail(event.taskId, emit);
      } else if (event is _StartTask) {
        await _startTask(event.task, emit);
      }
    });
  }

  Future _getTaskDetail(int taskId, Emitter emit) async {
    emit(const TaskDetailState.loading());
    try {
      final task = await _taskRepository.execute(taskId: taskId);
      if (emit.isDone) return;
      task.fold((l) {
        emit(
          TaskDetailState.error(AppError.handle(l).failure.message),
        );
      }, (r) {
        emit(TaskDetailState.success(r));
      });
    } catch (e) {
      if (emit.isDone) return;
      emit(
        TaskDetailState.error(AppError.handle(e).failure.message),
      );
    }
  }

  Future _startTask(TaskIvy task, Emitter emit) async {
    emit(const TaskDetailState.loading());
    await Future.delayed(const Duration(seconds: 1));
    if (emit.isDone) return;
    emit(TaskDetailState.startTaskSucess(task));
  }
}
