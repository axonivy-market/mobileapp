import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'sort_event.dart';
import 'sort_state.dart';

@injectable
class SortBloc extends Bloc<SortEvent, SortState> {
  SortBloc()
      : super(SortState([MainSortType.priority, SubSortType.mostImportant])) {
    on<SortEvent>(onChangeSortType);
  }

  void onChangeSortType(SortEvent event, Emitter emit) {
    emit(SortState(event.sortType));
  }
}
