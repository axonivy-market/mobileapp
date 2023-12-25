import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_event.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../util/resources/constants.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterState(FilterType.all)) {
    on<FilterEvent>(onChangeFilter);
  }

  void onChangeFilter(FilterEvent event, Emitter emit) {
    switch (event.filterType) {
      case FilterType.all:
        emit(FilterState(FilterType.all));
      case FilterType.expired:
        emit(FilterState(FilterType.expired));
    }
  }

  @override
  void onChange(Change<FilterState> change) {
    super.onChange(change);
    debugPrint('debug: $change');
  }
}
