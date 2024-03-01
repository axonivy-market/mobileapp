// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      uuid: json['uuid'] as String? ?? "",
      name: json['name'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      emailAddress: json['emailAddress'] as String? ?? "",
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'fullName': instance.fullName,
      'emailAddress': instance.emailAddress,
    };
