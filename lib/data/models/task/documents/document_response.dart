import 'package:axon_ivy/data/models/task/documents/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_response.freezed.dart';
part 'document_response.g.dart';

@freezed
class DocumentResponse with _$DocumentResponse {
  const factory DocumentResponse(
      {@Default(400) int statusCode,
      @Default("") String message,
      @Default(null) Document? document}) = _DocumentResponse;

  factory DocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseFromJson(json);
}
