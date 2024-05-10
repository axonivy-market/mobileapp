import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'document.freezed.dart';

part 'document.g.dart';

@freezed
@HiveType(typeId: 2)
class Document with _$Document {
  const factory Document({
    @HiveField(0) required int id,
    @HiveField(1) @Default("") String name,
    @HiveField(2) @Default("") String url,
    @HiveField(3) @Default("") String path,
    @HiveField(4) @Default(0) int fileLocalState,
    @HiveField(5) @Default("") String fileUploadPath,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
