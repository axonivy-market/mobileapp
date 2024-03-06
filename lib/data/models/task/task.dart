import 'package:axon_ivy/data/models/task/case/case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class TaskIvy with _$TaskIvy {
  const factory TaskIvy({
    required int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String fullRequestPath,
    @Default(false) bool offline,
    required DateTime startTimeStamp,
    @Default(null) DateTime? expiryTimeStamp,
    @Default(0) int priority,
    @Default(0) int state,
    @Default('') String activatorName,
    @Default('') String category,
    @Default(null)
    @JsonKey(name: 'case', defaultValue: null)
    CaseTask? caseTask,
    @Default(false) bool taskDone,
    @Default('') String submitUrl,
    @Default('') String formHTMLPage,
    @Default('') String doneTaskFormDataSerialized,
  }) = _TaskIvy;

  factory TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);
}
