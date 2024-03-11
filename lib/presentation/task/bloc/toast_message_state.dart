part of 'toast_message_cubit.dart';

@freezed
class ToastMessageState with _$ToastMessageState {
  const factory ToastMessageState.initial() = Initial;

  const factory ToastMessageState.show(int currentTime, String taskName) =
      ShowToastMessageState;
}
