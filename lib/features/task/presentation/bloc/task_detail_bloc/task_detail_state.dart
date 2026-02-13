part of 'task_detail_bloc.dart';

@freezed
abstract class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.loading() = TaskDetailLoadingState;
  const factory TaskDetailState.error(String error) = TaskDetailErrorState;
  const factory TaskDetailState.success(TaskIvy task) = TaskDetailSuccessState;
}
