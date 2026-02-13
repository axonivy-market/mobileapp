part of 'task_activity_bloc.dart';

@freezed
abstract class TaskActivityState with _$TaskActivityState {
  const factory TaskActivityState.initial() = _Initial;

  const factory TaskActivityState.loading(bool isShowLoading) =
      FinishedLoadingState;

  const factory TaskActivityState.finishedTaskOffline(TaskIvy taskIvy) =
      FinishedTaskOffline;
}
