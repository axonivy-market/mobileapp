// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProcessImpl _$$ProcessImplFromJson(Map<String, dynamic> json) =>
    _$ProcessImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      activatorName: json['activatorName'] as String? ?? "",
      fullRequestPath: json['fullRequestPath'] as String? ?? "",
      customFields: (json['customFields'] as List<dynamic>?)
              ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProcessImplToJson(_$ProcessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'activatorName': instance.activatorName,
      'fullRequestPath': instance.fullRequestPath,
      'customFields': instance.customFields,
    };
