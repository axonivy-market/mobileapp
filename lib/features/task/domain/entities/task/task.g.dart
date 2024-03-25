// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskIvyImpl _$$TaskIvyImplFromJson(Map<String, dynamic> json) =>
    _$TaskIvyImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      fullRequestPath: json['fullRequestPath'] as String,
      offline: json['offline'] as bool,
      startTimeStamp: DateTime.parse(json['startTimeStamp'] as String),
      expiryTimeStamp: json['expiryTimeStamp'] == null
          ? null
          : DateTime.parse(json['expiryTimeStamp'] as String),
      priority: json['priority'] as int,
      state: json['state'] as int,
      activatorName: json['activatorName'] as String,
      category: json['category'] as String,
      caseTask: json['caseTask'] == null
          ? null
          : CaseTask.fromJson(json['caseTask'] as Map<String, dynamic>),
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
      'category': instance.category,
      'caseTask': instance.caseTask,
    };
