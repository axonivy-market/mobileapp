part of 'task_detail_cubit.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.initial() = InitialState;

  const factory TaskDetailState.startTask(TaskIvy taskIvy, DateTime now) =
      StartTaskState;
}
