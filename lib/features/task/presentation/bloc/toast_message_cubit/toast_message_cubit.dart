import 'package:axon_ivy/features/task/domain/usecases/get_task_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'toast_message_cubit.freezed.dart';

part 'toast_message_state.dart';

@injectable
class ToastMessageCubit extends Cubit<ToastMessageState> {
  final GetTaskUseCase _taskRepository;

  ToastMessageCubit(this._taskRepository)
      : super(const ToastMessageState.initial());

  void showToastMessage(Map<dynamic, dynamic> taskInfo) async {
    var taskName = taskInfo.entries.first.value;

    if (taskName.isNotEmpty) {
      emit(ToastMessageState.show(
          DateTime.now().millisecondsSinceEpoch, taskName));
      return;
    }
    try {
      final task =
          await _taskRepository.execute(taskId: taskInfo.entries.first.key);

      task.fold(
          (l) => null,
          (r) => {
                emit(ToastMessageState.show(
                    DateTime.now().millisecondsSinceEpoch, r.name))
              });
    } catch (e) {
      rethrow;
    }
  }
}
