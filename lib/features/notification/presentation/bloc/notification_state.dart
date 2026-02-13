part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.loading() = NotificationLoadingState;
  const factory NotificationState.error(String error) = NotificationErrorState;
  const factory NotificationState.success({
    required List<Notification> notifications,
    @Default(true) bool isOnline,
  }) = NotificationSuccessState;
  const factory NotificationState.markedReadNotification(String uuid) =
      NotificationMarkedReadState;
}
