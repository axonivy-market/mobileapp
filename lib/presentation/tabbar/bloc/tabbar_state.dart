part of 'tabbar_cubit.dart';

@freezed
class TabBarState with _$TabBarState {
  const factory TabBarState.initial() = Initial;

  const factory TabBarState.navigateTasks() = NavigateTasksState;
}
