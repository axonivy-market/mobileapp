part of 'search_filter_cubit.dart';

@freezed
class SearchFilterState with _$SearchFilterState {
  const factory SearchFilterState.filter(SearchType type) = FilterState;
}
