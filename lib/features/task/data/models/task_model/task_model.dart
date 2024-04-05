import 'package:axon_ivy/core/abstracts/data_mapper.dart';
import 'package:axon_ivy/features/task/data/models/case_model/case_model.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskIvyModel extends DataMapper<TaskIvy> {
  final int id;
  final String? name;
  final String? description;
  final String? fullRequestPath;
  final bool? offline;
  final DateTime? startTimeStamp;
  final DateTime? expiryTimeStamp;
  final int? priority;
  final int? state;
  final String? activatorName;
  final String? category;
  @JsonKey(name: 'case')
  final CaseTaskModel? caseTask;

  TaskIvyModel({
    required this.id,
    this.name,
    this.description,
    this.fullRequestPath,
    this.offline,
    this.startTimeStamp,
    this.expiryTimeStamp,
    this.priority,
    this.state,
    this.activatorName,
    this.category,
    this.caseTask,
  });

  factory TaskIvyModel.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskIvyModelToJson(this);

  @override
  TaskIvy toEntity() {
    return TaskIvy(
      id: id,
      name: name ?? '',
      description: description ?? '',
      fullRequestPath: fullRequestPath ?? '',
      offline: offline ?? false,
      startTimeStamp: startTimeStamp ?? DateTime.now(),
      expiryTimeStamp: expiryTimeStamp,
      priority: priority ?? 0,
      state: state ?? 0,
      activatorName: activatorName ?? '',
      category: category ?? '',
      caseTask: caseTask?.toEntity(),
    );
  }
}
