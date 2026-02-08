// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionHeader _$SectionHeaderFromJson(Map<String, dynamic> json) =>
    SectionHeader(
      json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SectionHeaderToJson(SectionHeader instance) =>
    <String, dynamic>{
      'title': instance.title,
      'runtimeType': instance.$type,
    };

TaskItem _$TaskItemFromJson(Map<String, dynamic> json) => TaskItem(
      TaskIvy.fromJson(json['task'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$TaskItemToJson(TaskItem instance) => <String, dynamic>{
      'task': instance.task,
      'runtimeType': instance.$type,
    };

ProcessItem _$ProcessItemFromJson(Map<String, dynamic> json) => ProcessItem(
      Process.fromJson(json['process'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ProcessItemToJson(ProcessItem instance) =>
    <String, dynamic>{
      'process': instance.process,
      'runtimeType': instance.$type,
    };
