part of 'task_activity_bloc.dart';

@freezed
class TaskActivityEvent with _$TaskActivityEvent {
  const factory TaskActivityEvent.finishTaskOffline(TaskIvy taskIvy) =
      _FinishTaskOfflineEvent;
}
