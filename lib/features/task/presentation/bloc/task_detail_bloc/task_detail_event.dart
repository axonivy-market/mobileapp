part of 'task_detail_bloc.dart';

@freezed
class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.getTaskDetail(TaskIvy task) = _GetTaskDetail;
}
