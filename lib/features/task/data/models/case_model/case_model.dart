import 'package:axon_ivy/core/abstracts/data_mapper.dart';
import 'package:axon_ivy/features/task/data/models/document_model/document_model.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_model.g.dart';

@JsonSerializable()
class CaseTaskModel extends DataMapper<CaseTask> {
  final int id;
  final String? name;
  final String? description;
  final List<DocumentModel>? documents;

  CaseTaskModel({
    required this.id,
    this.name,
    this.description,
    this.documents,
  });

  factory CaseTaskModel.fromJson(Map<String, dynamic> json) =>
      _$CaseTaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$CaseTaskModelToJson(this);

  @override
  CaseTask toEntity() {
    return CaseTask(
      id: id,
      name: name ?? '',
      description: description ?? '',
      documents: documents?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}
