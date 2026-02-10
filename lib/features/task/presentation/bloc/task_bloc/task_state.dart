part of 'task_bloc.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState.loading(bool isShowLoading) = TaskLoadingState;

  const factory TaskState.error(String error) = TaskErrorState;

  const factory TaskState.success({
    required List<TaskIvy> tasks,
    @Default(true) bool isOnline,
  }) = TaskSuccessState;
}
