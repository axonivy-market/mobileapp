// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseDocument _$ResponseDocumentFromJson(Map<String, dynamic> json) =>
    _ResponseDocument(
      message: json['message'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
      document: json['document'] == null
          ? const Document(id: 0)
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseDocumentToJson(_ResponseDocument instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'document': instance.document,
    };
