// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
      uuid: json['uuid'] as String? ?? "",
      name: json['name'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      emailAddress: json['emailAddress'] as String? ?? "",
    );

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'fullName': instance.fullName,
      'emailAddress': instance.emailAddress,
    };
