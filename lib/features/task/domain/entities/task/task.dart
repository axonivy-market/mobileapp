import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/shared/enums/task_state_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
@HiveType(typeId: 0)
class TaskIvy with _$TaskIvy {
  const TaskIvy._();

  const factory TaskIvy({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String description,
    @HiveField(3) required String fullRequestPath,
    @HiveField(4) required bool offline,
    @HiveField(5) required DateTime startTimeStamp,
    @HiveField(6) DateTime? expiryTimeStamp,
    @HiveField(7) required int priority,
    @HiveField(8) required int state,
    @HiveField(9) required String activatorName,
    @HiveField(10) required String category,
    @HiveField(11) CaseTask? caseTask,
    @HiveField(12) Map<String, dynamic>? doneTaskFormDataSerializedOffline,
    @HiveField(13) String? submitUrlOffline,
    @HiveField(14) String? formHTMLPageOffline,
  }) = _TaskIvy;

  factory TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);

  bool get isTaskDone {
    return state == TaskStateEnum.doneInOffline.value;
  }
}
