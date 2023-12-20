import 'package:axon_ivy/data/models/enums/search_type.dart';
import 'package:axon_ivy/data/models/search/search.dart';
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

  Future<void> _searchItems(event, Emitter emit) async {
    if (event is SearchItem) {
      query = event.query;
      if (event.query.isEmpty) {
        emit(const SearchState.initial());
        return;
      }
      switch (event.type) {
        case SearchType.all:
          final tasks = _taskResults(event.query.toLowerCase().trim());
          emit(SearchState.loaded(tasks, query));
          break;
        case SearchType.tasks:
          final tasks = _taskResults(event.query.toLowerCase().trim());
          emit(SearchState.loaded(tasks, query));
          break;
        case SearchType.processes:
          emit(const SearchState.loaded([], ""));
          break;
      }
    }
  }

  List<SearchResult> _taskResults(String query) {
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
}
