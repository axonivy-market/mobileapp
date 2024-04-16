part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications(int page, int pageSize) =
      _GetNotification;
  const factory NotificationEvent.markReadNotification(String uuid) =
      _MarkReadNotification;
}
