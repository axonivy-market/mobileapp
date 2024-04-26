import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_event.dart';
import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_state.dart';
import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

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
}
