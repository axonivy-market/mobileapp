part of 'search_filter_cubit.dart';

@freezed
abstract class SearchFilterState with _$SearchFilterState {
  const factory SearchFilterState.filter(SearchType type) = FilterState;
}
