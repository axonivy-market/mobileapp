import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class TaskIvy with _$TaskIvy {
  const factory TaskIvy({
    required int id,
    required String name,
    required String description,
    required String fullRequestPath,
    required bool offline,
    required DateTime startTimeStamp,
    DateTime? expiryTimeStamp,
    required int priority,
    required int state,
    required String activatorName,
    required String category,
    CaseTask? caseTask,
  }) = _TaskIvy;

  factory TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);
}
