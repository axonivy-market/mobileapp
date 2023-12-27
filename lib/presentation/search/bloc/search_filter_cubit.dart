import 'package:axon_ivy/data/models/enums/search_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_filter_state.dart';

part 'search_filter_cubit.freezed.dart';

@injectable
class SearchFilterCubit extends Cubit<SearchFilterState> {
  SearchFilterCubit() : super(const SearchFilterState.filter(SearchType.all));

  void selectTab(SearchType type) {
    emit(SearchFilterState.filter(type));
  }
}
