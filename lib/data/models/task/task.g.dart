// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskIvyImpl _$$TaskIvyImplFromJson(Map<String, dynamic> json) =>
    _$TaskIvyImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      fullRequestPath: json['fullRequestPath'] as String? ?? "",
      offline: json['offline'] as bool? ?? false,
      startTimeStamp: DateTime.parse(json['startTimeStamp'] as String),
      expiryTimeStamp: json['expiryTimeStamp'] == null
          ? null
          : DateTime.parse(json['expiryTimeStamp'] as String),
      priority: json['priority'] as int? ?? 0,
      state: json['state'] as int? ?? 0,
      activatorName: json['activatorName'] as String? ?? "",
    );

Map<String, dynamic> _$$TaskIvyImplToJson(_$TaskIvyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'fullRequestPath': instance.fullRequestPath,
      'offline': instance.offline,
      'startTimeStamp': instance.startTimeStamp.toIso8601String(),
      'expiryTimeStamp': instance.expiryTimeStamp?.toIso8601String(),
      'priority': instance.priority,
      'state': instance.state,
      'activatorName': instance.activatorName,
    };