// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionHeaderImpl _$$SectionHeaderImplFromJson(Map<String, dynamic> json) =>
    _$SectionHeaderImpl(
      json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SectionHeaderImplToJson(_$SectionHeaderImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$TaskItemImpl _$$TaskItemImplFromJson(Map<String, dynamic> json) =>
    _$TaskItemImpl(
      TaskIvy.fromJson(json['task'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TaskItemImplToJson(_$TaskItemImpl instance) =>
    <String, dynamic>{
      'task': instance.task,
      'runtimeType': instance.$type,
    };
