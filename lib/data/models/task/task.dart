import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class TaskIvy with _$TaskIvy {
  const factory TaskIvy({
    required int id,
    @Default("") String name,
    @Default("") String description,
    @Default("") String fullRequestPath,
    @Default(false) bool offline,
    required DateTime startTimeStamp,
    @Default(null) DateTime? expiredTimeStamp,
    @Default(0) int priority,
    @Default(0) int state,
    @Default("") String activatorName,
  }) = _TaskIvy;

  factory TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);
}
