// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      uuid: json['uuid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      read: json['read'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'createdAt': instance.createdAt.toIso8601String(),
      'read': instance.read,
      'message': instance.message,
    };
