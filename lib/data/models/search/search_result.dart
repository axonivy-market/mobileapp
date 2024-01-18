import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';

part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult.sectionHeader(String title) = SectionHeader;

  const factory SearchResult.task(TaskIvy task) = TaskItem;

  factory SearchResult.process(Process process) = ProcessItem;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
