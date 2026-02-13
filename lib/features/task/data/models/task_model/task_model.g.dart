// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskIvyModel _$TaskIvyModelFromJson(Map<String, dynamic> json) => TaskIvyModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      fullRequestPath: json['fullRequestPath'] as String?,
      offline: json['offline'] as bool?,
      startTimeStamp: json['startTimeStamp'] == null
          ? null
          : DateTime.parse(json['startTimeStamp'] as String),
      expiryTimeStamp: json['expiryTimeStamp'] == null
          ? null
          : DateTime.parse(json['expiryTimeStamp'] as String),
      priority: (json['priority'] as num?)?.toInt(),
      state: (json['state'] as num?)?.toInt(),
      activatorName: json['activatorName'] as String?,
      category: json['category'] as String?,
      caseTask: json['case'] == null
          ? null
          : CaseTaskModel.fromJson(json['case'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskIvyModelToJson(TaskIvyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'fullRequestPath': instance.fullRequestPath,
      'offline': instance.offline,
      'startTimeStamp': instance.startTimeStamp?.toIso8601String(),
      'expiryTimeStamp': instance.expiryTimeStamp?.toIso8601String(),
      'priority': instance.priority,
      'state': instance.state,
      'activatorName': instance.activatorName,
      'category': instance.category,
      'case': instance.caseTask,
    };
