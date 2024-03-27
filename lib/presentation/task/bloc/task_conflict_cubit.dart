import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/data/repositories/task/task_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_localization/easy_localization.dart';

part 'task_conflict_cubit.freezed.dart';
part 'task_conflict_state.dart';

@injectable
class TaskConflictCubit extends Cubit<TaskConflictState> {
  final TaskRepository _taskRepository;

  TaskConflictCubit(this._taskRepository)
      : super(const TaskConflictState.initial());

  void checkTaskConflict(int taskId) async {
    try {
      final task = await _taskRepository.getTaskDetail(taskId);
      task.fold(
        (l) {
          emitTaskUnstartable(l.message);
        },
        (r) {
          if (r.state == 4 || r.state == 5 || r.state == 8) {
            emit(TaskConflictState.taskStartable(
                DateTime.now().millisecondsSinceEpoch, r));
          } else {
            emitTaskUnstartable("taskConflict.taskUpdatedInBackground".tr());
          }
        },
      );
    } catch (e) {
      emitTaskUnstartable("taskConflict.taskUpdatedInBackground".tr());
    }
  }

  void emitTaskUnstartable(String message) {
    emit(TaskConflictState.taskUnstartable(
        DateTime.now().millisecondsSinceEpoch, message));
  }
}
