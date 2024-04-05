part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTasks(FilterType activeFilter) = _GetTasks;

  const factory TaskEvent.filterTasks(FilterType activeFilter) = _FilterTasks;

  const factory TaskEvent.sortTasks(List<SortType> activeSortType) = _SortTasks;

  const factory TaskEvent.getTask(int id) = _GetTask;

  const factory TaskEvent.showOfflinePopupEvent(bool isConnected) =
      ShowOfflinePopupEvent;

  const factory TaskEvent.parseHtml() = ParseHtmlEvent;

  const factory TaskEvent.onTasksLoadedSync() = TasksLoadedSyncEvent;

  const factory TaskEvent.syncDataOnEngineRestore() =
      SyncDataOnEngineRestoreEvent;

  const factory TaskEvent.showTasksOffline() = ShowTasksOfflineEvent;
}
