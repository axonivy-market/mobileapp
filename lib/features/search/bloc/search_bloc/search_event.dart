part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getTaskProcess() = _GetTaskProcess;

  const factory SearchEvent.searchItem(String query, SearchType type) =
      SearchItem;
}
