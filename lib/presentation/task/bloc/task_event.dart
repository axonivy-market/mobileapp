part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTasks(FilterType activeFilter) = _GetTasks;
  const factory TaskEvent.filterTasks(FilterType activeFilter) = _FilterTasks;
  const factory TaskEvent.sortTasks(List<SortType> activeSortType) = _SortTasks;
}
