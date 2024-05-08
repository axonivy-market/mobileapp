import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/repositories/task_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_localization/easy_localization.dart';

part 'task_conflict_cubit.freezed.dart';

part 'task_conflict_state.dart';

@injectable
class TaskConflictCubit extends Cubit<TaskConflictState> {
  final TaskRepositoryInterface _repository;

  TaskConflictCubit(this._repository)
      : super(const TaskConflictState.initial());

  void checkTaskConflict(TaskIvy taskIvy) async {
    if (taskIvy.offline) {
      emit(TaskConflictState.taskStartable(
          DateTime.now().millisecondsSinceEpoch, taskIvy));
      return;
    }
    emit(const TaskConflictState.loading());
    try {
      final task = await _repository.getTaskDetail(taskId: taskIvy.id);
      task.fold(
        (l) {
          emitTaskUnstartable(l.message);
        },
        (r) async {
          switch (r.state) {
            case 5:
              var isConflict =
                  await checkTaskFromServerWithPath(taskIvy.fullRequestPath);
              if (isConflict) {
                emitTaskUnstartable(
                    "taskConflict.taskUpdatedInBackground".tr());
              } else {
                emit(TaskConflictState.taskStartable(
                    DateTime.now().millisecondsSinceEpoch, r));
              }
              break;
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

  Future<bool> checkTaskFromServerWithPath(String path) async {
    var dio = getIt<Dio>();
    try {
      await dio.get(path);
      return false;
    } on DioException catch (e) {
      return e.response?.statusCode == 409;
    } catch (e) {
      return false;
    }
  }
}
