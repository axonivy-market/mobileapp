// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDocumentModel _$ResponseDocumentModelFromJson(
        Map<String, dynamic> json) =>
    ResponseDocumentModel(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseDocumentModelToJson(
        ResponseDocumentModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'document': instance.document,
    };
