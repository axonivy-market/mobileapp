// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentResponseImpl _$$DocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentResponseImpl(
      statusCode: json['statusCode'] as int? ?? 400,
      message: json['message'] as String? ?? "",
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DocumentResponseImplToJson(
        _$DocumentResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'document': instance.document,
    };
