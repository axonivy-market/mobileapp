part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.loading(bool isShowLoading) = TaskLoadingState;
  const factory TaskState.error(String error) = TaskErrorState;
  const factory TaskState.success(List<TaskIvy> tasks) = TaskSuccessState;
  const factory TaskState.empty() = TaskEmptyState;
}
