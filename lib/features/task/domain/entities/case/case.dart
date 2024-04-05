import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'case.freezed.dart';

part 'case.g.dart';

@freezed
@HiveType(typeId: 1)
class CaseTask with _$CaseTask {
  factory CaseTask({
    @HiveField(0) required int id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String description,
    @HiveField(3) @Default([]) List<Document> documents,
  }) = _CaseTask;

  factory CaseTask.fromJson(Map<String, dynamic> json) =>
      _$CaseTaskFromJson(json);
}
