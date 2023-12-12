import 'dart:async';
import 'package:dio/dio.dart';
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

  FutureOr<void> _getTasks(event, Emitter emit) async {
    print('----> loading...');
    emit(const TaskState.loading(true));

    try {
      print("----> try to fetch");
      final tasks = await _taskRepository.getTasks();

      tasks.fold(
        (l) {
          emit(TaskState.error(AppError.handle(l)));
        },
        (r) {
          emit(TaskState.success(_sortDefaultTasks(r)));
        },
      );
    } on AppError catch (e) {
      emit(TaskState.error(e));
    }
  }

  List<TaskIvy> _sortDefaultTasks(List<TaskIvy> tasks) {
    List<TaskIvy> sortedTasks = [];
    List<TaskIvy> exceptionTasks =
        tasks.where((task) => task.priority == 4).toList();
    List<TaskIvy> highTasks =
        tasks.where((task) => task.priority == 3).toList();
    List<TaskIvy> normalTasks =
        tasks.where((task) => task.priority == 2).toList();
    List<TaskIvy> lowTasks = tasks.where((task) => task.priority == 1).toList();

    sortedTasks.addAll(exceptionTasks);
    sortedTasks.addAll(highTasks);
    sortedTasks.addAll(normalTasks);
    sortedTasks.addAll(lowTasks);
    return sortedTasks;
  }
}
