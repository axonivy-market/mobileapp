part of 'task_activity_bloc.dart';

@freezed
abstract class TaskActivityEvent with _$TaskActivityEvent {
  const factory TaskActivityEvent.finishTaskOffline(TaskIvy taskIvy) =
      _FinishTaskOfflineEvent;
}
