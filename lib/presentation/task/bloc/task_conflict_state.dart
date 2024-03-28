part of 'task_conflict_cubit.dart';

@freezed
class TaskConflictState with _$TaskConflictState {
  const factory TaskConflictState.initial() = Initial;

  const factory TaskConflictState.loading() = LoadingState;
  
  const factory TaskConflictState.taskUnstartable(
      int currentTime, String message) = TaskUnstartableState;

  const factory TaskConflictState.taskStartable(int currentTime, TaskIvy task) =
      TaskStartableState;
}
