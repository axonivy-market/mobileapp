part of 'task_detail_bloc.dart';

@freezed
class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.getTaskDetail(int taskId) = _GetTaskDetail;
  const factory TaskDetailEvent.startTask(TaskIvy task) = _StartTask;
}
