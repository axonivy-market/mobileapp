import 'package:axon_ivy/data/models/enums/search_type.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/models/search/search.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/data/repositories/search_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late List<SearchResult> _searchResults;
  String query = '';
  final SearchRepository _searchRepository;

  SearchBloc(this._searchRepository) : super(const SearchState.initial()) {
    _searchResults = [];
    on<_GetTaskProcess>(_getTaskProcess);
    on<SearchItem>(_searchItems);
  }

  Future<void> _getTaskProcess(event, Emitter emit) async {
    try {
      final searchItems = await _searchRepository.getSearchItems();

      searchItems.fold(
        (l) {
          if (kDebugMode) {
            print(l.message);
          }
        },
        (r) {
          _searchResults.addAll(r);
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void combineSearchItems(List<TaskIvy> tasks, List<Process> processes) {
    _searchResults.clear();
    final List<SearchResult> allItems = [
      ...tasks.map((task) => SearchResult.task(task)),
      ...processes.map((process) => SearchResult.process(process)),
    ];
    _searchResults.addAll(allItems);
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
          if (processes.isEmpty) {
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
    final tasks = _searchResults
        .where((item) =>
            item is TaskItem &&
            (item.task.name.toLowerCase().contains(query) ||
                item.task.description.toLowerCase().contains(query)))
        .toList();
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
    final processes = _processSearchResults(query);
    return tasks + processes;
  }

  List<SearchResult> _processSearchResults(String query) {
    if (query.isEmpty) {
      return List.empty();
    }
    final processes = _searchResults
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
