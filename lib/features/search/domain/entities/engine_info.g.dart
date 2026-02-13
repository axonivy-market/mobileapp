// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EngineInfo _$EngineInfoFromJson(Map<String, dynamic> json) => _EngineInfo(
      version: json['version'] as String? ?? '',
      engineName: json['engineName'] as String? ?? '',
      minimumSupportedMobileAppVersion:
          json['minimumSupportedMobileAppVersion'] as String? ?? '',
    );

Map<String, dynamic> _$EngineInfoToJson(_EngineInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'engineName': instance.engineName,
      'minimumSupportedMobileAppVersion':
          instance.minimumSupportedMobileAppVersion,
    };
