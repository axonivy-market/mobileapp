import 'package:axon_ivy/features/process/domain/entities/customfield/customfield.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'process.freezed.dart';
part 'process.g.dart';

@freezed
abstract class Process with _$Process {
  const factory Process({
    @Default('') String id,
    @Default("") String name,
    @Default("") String description,
    @Default("") String activatorName,
    @Default("") String fullRequestPath,
    @Default([]) List<CustomField> customFields,
  }) = _Process;

  factory Process.fromJson(Map<String, dynamic> json) =>
      _$ProcessFromJson(json);
}
