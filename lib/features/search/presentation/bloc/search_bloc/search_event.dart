part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getTaskProcess() = _GetTaskProcess;

  const factory SearchEvent.searchItem(String query, SearchType type) =
      SearchItem;
}
