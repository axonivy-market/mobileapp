// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineInfoImpl _$$EngineInfoImplFromJson(Map<String, dynamic> json) =>
    _$EngineInfoImpl(
      version: json['version'] as String? ?? '',
      engineName: json['engineName'] as String? ?? '',
      minimumSupportedMobileAppVersion:
          json['minimumSupportedMobileAppVersion'] as String? ?? '',
    );

Map<String, dynamic> _$$EngineInfoImplToJson(_$EngineInfoImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'engineName': instance.engineName,
      'minimumSupportedMobileAppVersion':
          instance.minimumSupportedMobileAppVersion,
    };
