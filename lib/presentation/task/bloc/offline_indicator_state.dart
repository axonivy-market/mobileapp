part of 'offline_indicator_cubit.dart';

@freezed
class OfflineIndicatorState with _$OfflineIndicatorState {
  const factory OfflineIndicatorState.isShow(bool isNotEngineConnected) =
      ShowOfflineIndicatorState;
}
