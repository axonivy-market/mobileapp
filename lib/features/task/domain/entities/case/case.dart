import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case.freezed.dart';
part 'case.g.dart';

@freezed
class CaseTask with _$CaseTask {
  factory CaseTask({
    required int id,
    @Default('') String name,
    @Default('') String description,
    @Default([]) List<Document> documents,
  }) = _CaseTask;

  factory CaseTask.fromJson(Map<String, dynamic> json) =>
      _$CaseTaskFromJson(json);
}
