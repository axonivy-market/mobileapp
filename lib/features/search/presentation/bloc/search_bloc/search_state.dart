part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = InitialState;

  const factory SearchState.getTaskProcess(List<SearchItem> items) =
      TaskProcessLoadedState;

  const factory SearchState.loaded({
    List<SearchResult>? items,
    String? emptyMessage,
    @Default("") String query,
  }) = SearchResultState;
}
