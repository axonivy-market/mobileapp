import 'package:axon_ivy/core/abstracts/data_mapper.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel extends DataMapper<Notification> {
  final String uuid;
  final DateTime? createdAt;
  final bool? read;
  final String? message;

  NotificationModel({
    required this.uuid,
    this.createdAt,
    this.message,
    this.read,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);

  @override
  Notification toEntity() {
    return Notification(
      uuid: uuid,
      createdAt: createdAt ?? DateTime.now(),
      read: read ?? false,
      message: message ?? '',
    );
  }
}
