part of 'task_detail_bloc.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.loading(bool isShowLoading) =
      TaskDetailLoadingState;
  const factory TaskDetailState.error(String error) = TaskDetailErrorState;
  const factory TaskDetailState.success(TaskIvy task) = TaskDetailSuccessState;
}
