import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:axon_ivy/features/search/domain/entities/search.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/shared/enums/search_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late List<SearchResult> _searchData;
  String query = '';
  bool isOfflineMode = false;

  SearchBloc() : super(const SearchState.initial()) {
    _searchData = [];
    on<SearchItem>(_searchItems);
  }

  void combineSearchItems(List<TaskIvy> tasks, List<Process> processes) {
    _searchData.clear();
    final List<SearchResult> allItems = [
      ...tasks.map((task) => SearchResult.task(task)),
      ...processes.map((process) => SearchResult.process(process)),
    ];
    _searchData.addAll(allItems);
  }

  Future<void> _searchItems(event, Emitter emit) async {
    if (event is SearchItem) {
      query = event.query;
      if (event.query.isEmpty) {
        emit(const SearchState.initial());
        return;
      }
      switch (event.type) {
        case SearchType.all:
          final results = _allSearchResults(event.query.toLowerCase().trim());
          if (results.isEmpty) {
            emit(const SearchState.loaded(
                emptyMessage: "search.noMatchingResults"));
          } else {
            emit(SearchState.loaded(items: results, query: query));
          }
          break;
        case SearchType.tasks:
          final tasks = _taskSearchResults(event.query.toLowerCase().trim());
          if (tasks.isEmpty) {
            emit(
                const SearchState.loaded(emptyMessage: "search.noTaskResults"));
          } else {
            emit(SearchState.loaded(items: tasks, query: query));
          }
          break;
        case SearchType.processes:
          final processes =
              _processSearchResults(event.query.toLowerCase().trim());
          if (isOfflineMode || processes.isEmpty) {
            emit(const SearchState.loaded(
                emptyMessage: "search.noProcessResults"));
          } else {
            emit(SearchState.loaded(items: processes, query: query));
          }
          break;
      }
    }
  }

  List<SearchResult> _taskSearchResults(String query) {
    if (query.isEmpty) {
      return List.empty();
    }
    final tasks = _searchData.where((item) {
      if (item is TaskItem &&
          (item.task.name.toLowerCase().contains(query) ||
              item.task.description.toLowerCase().contains(query))) {
        if (isOfflineMode) {
          return item.task.offline;
        } else {
          return true;
        }
      } else {
        return false;
      }
    }).toList();
    if (tasks.isNotEmpty) {
      tasks.insert(0, const SearchResult.sectionHeader('generalTasks'));
    }
    return tasks;
  }

  List<SearchResult> _allSearchResults(String query) {
    if (query.isEmpty) {
      return List.empty();
    }
    final tasks = _taskSearchResults(query);
    List<SearchResult> processes =
        isOfflineMode ? [] : _processSearchResults(query);
    return tasks + processes;
  }

  List<SearchResult> _processSearchResults(String query) {
    if (query.isEmpty) {
      return List.empty();
    }
    final processes = _searchData
        .where((item) =>
            item is ProcessItem &&
            (item.process.name.toLowerCase().contains(query) ||
                item.process.description.toLowerCase().contains(query)))
        .toList();
    if (processes.isNotEmpty) {
      processes.insert(0, const SearchResult.sectionHeader('generalProcesses'));
    }
    return processes;
  }
}
