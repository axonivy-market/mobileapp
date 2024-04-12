import 'package:axon_ivy/core/abstracts/data_mapper.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/response_document/response_document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_document_model.g.dart';

@JsonSerializable()
class ResponseDocumentModel extends DataMapper<ResponseDocument> {
  final String? message;
  final int? statusCode;
  final Document? document;

  ResponseDocumentModel({
    this.message,
    this.statusCode,
    this.document,
  });

  factory ResponseDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDocumentModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDocumentModelToJson(this);

  @override
  ResponseDocument toEntity() {
    return ResponseDocument(
      message: message ?? '',
      statusCode: statusCode ?? 0,
      document: document ?? const Document(id: 0),
    );
  }
}
