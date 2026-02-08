// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      uuid: json['uuid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      read: json['read'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'createdAt': instance.createdAt.toIso8601String(),
      'read': instance.read,
      'message': instance.message,
    };
