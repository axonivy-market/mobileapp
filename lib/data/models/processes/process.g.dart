// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProcessImpl _$$ProcessImplFromJson(Map<String, dynamic> json) =>
    _$ProcessImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      activatorName: json['activatorName'] as String? ?? "",
      fullRequestPath: json['fullRequestPath'] as String? ?? "",
    );

Map<String, dynamic> _$$ProcessImplToJson(_$ProcessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'activatorName': instance.activatorName,
      'fullRequestPath': instance.fullRequestPath,
    };
