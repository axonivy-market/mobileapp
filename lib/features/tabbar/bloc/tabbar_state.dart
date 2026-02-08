part of 'tabbar_cubit.dart';

@freezed
abstract class TabBarState with _$TabBarState {
  const factory TabBarState.initial() = Initial;

  const factory TabBarState.navigateTasks(
      int currentTime, Map<dynamic, dynamic> taskInfo) = NavigateTasksState;
}
