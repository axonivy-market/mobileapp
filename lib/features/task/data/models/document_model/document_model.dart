import 'package:axon_ivy/core/abstracts/data_mapper.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.g.dart';

@JsonSerializable()
class DocumentModel extends DataMapper<Document> {
  final int id;
  final String? name;
  final String? url;
  final String? path;

  DocumentModel({
    required this.id,
    this.name,
    this.url,
    this.path,
  });

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentModelToJson(this);

  @override
  Document toEntity() {
    return Document(
      id: id,
      name: name ?? '',
      url: url ?? '',
      path: path ?? '',
    );
  }
}
