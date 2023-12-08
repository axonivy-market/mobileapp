part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.loading(bool isShowLoading) = TaskLoadingState;
  const factory TaskState.error(AppError error) = TaskErrorState;
  const factory TaskState.success(List<TaskIvy> tasks) = TaskSuccessState;
}
