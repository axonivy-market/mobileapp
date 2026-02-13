part of 'task_detail_bloc.dart';

@freezed
abstract class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.getTaskDetail(TaskIvy task) = _GetTaskDetail;
}
