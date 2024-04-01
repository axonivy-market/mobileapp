// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDocumentImpl _$$ResponseDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDocumentImpl(
      message: json['message'] as String? ?? '',
      statusCode: json['statusCode'] as int? ?? 0,
      document: json['document'] == null
          ? const Document(id: 0)
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDocumentImplToJson(
        _$ResponseDocumentImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'document': instance.document,
    };
