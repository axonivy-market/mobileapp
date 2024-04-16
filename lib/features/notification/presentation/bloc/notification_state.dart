part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.loading() = NotificationLoadingState;
  const factory NotificationState.error(String error) = NotificationErrorState;
  const factory NotificationState.success(List<Notification> notifications) =
      NotificationSuccessState;
  const factory NotificationState.markedReadNotification(String uuid) =
      NotificationMarkedReadState;
}
