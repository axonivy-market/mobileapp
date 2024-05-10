import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/usecases/get_task_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_localization/easy_localization.dart';

part 'task_conflict_cubit.freezed.dart';

part 'task_conflict_state.dart';

@injectable
class TaskConflictCubit extends Cubit<TaskConflictState> {
  final GetTaskUseCase _getTaskUseCase;

  TaskConflictCubit(this._getTaskUseCase)
      : super(const TaskConflictState.initial());

  void checkTaskConflict(TaskIvy taskIvy) async {
    if (taskIvy.offline) {
      emit(TaskConflictState.taskStartable(
          DateTime.now().millisecondsSinceEpoch, taskIvy));
      return;
    }
    emit(const TaskConflictState.loading());
    try {
      final task = await _getTaskUseCase.execute(taskId: taskIvy.id);
      task.fold(
        (l) {
          emitTaskUnstartable(l.message);
        },
        (r) async {
          switch (r.state) {
            case 5:
            case 4:
            case 8:
              emit(TaskConflictState.taskStartable(
                  DateTime.now().millisecondsSinceEpoch, r));
              break;
            default:
              emitTaskUnstartable("taskConflict.taskUpdatedInBackground".tr());
              break;
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
