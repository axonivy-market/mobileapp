import 'package:axon_ivy/data/models/task/case/case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class TaskIvy with _$TaskIvy {
  factory TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);

  @HiveType(typeId: 1)
  const factory TaskIvy({
    @HiveField(0) required int id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String description,
    @HiveField(3) @Default('') String fullRequestPath,
    @HiveField(4) @Default(false) bool offline,
    @HiveField(5) required DateTime startTimeStamp,
    @HiveField(6) @Default(null) DateTime? expiryTimeStamp,
    @HiveField(7) @Default(0) int priority,
    @HiveField(8) @Default(0) int state,
    @HiveField(9) @Default('') String activatorName,
    @HiveField(10) @Default('') String category,
    @Default(null)
    @JsonKey(name: 'case', defaultValue: null)
    @HiveField(11)
    CaseTask? caseTask,
    @HiveField(12) Map<String, dynamic>? doneTaskFormDataSerializedOffline,
    @HiveField(13) @Default('') String submitUrlOffline,
    @HiveField(14) @Default('') String formHTMLPageOffline,
  }) = _TaskIvy;

  factory TaskIvy.empty() {
    return TaskIvy(id: 0, startTimeStamp: DateTime.now());
  }
}
