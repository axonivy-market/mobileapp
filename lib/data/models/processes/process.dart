import 'package:freezed_annotation/freezed_annotation.dart';

part 'process.freezed.dart';

part 'process.g.dart';

@freezed
class Process with _$Process {
  const factory Process({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String description,
    @Default("") String activatorName,
    @Default("") String fullRequestPath,
  }) = _Process;

  factory Process.fromJson(Map<String, dynamic> json) =>
      _$ProcessFromJson(json);
}
