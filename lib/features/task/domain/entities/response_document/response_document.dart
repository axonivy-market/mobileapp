import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_document.freezed.dart';
part 'response_document.g.dart';

@freezed
class ResponseDocument with _$ResponseDocument {
  const factory ResponseDocument({
    @Default('') String message,
    @Default(0) int statusCode,
    @Default(Document(id: 0)) Document document,
  }) = _ResponseDocument;

  factory ResponseDocument.fromJson(Map<String, dynamic> json) =>
      _$ResponseDocumentFromJson(json);
}
