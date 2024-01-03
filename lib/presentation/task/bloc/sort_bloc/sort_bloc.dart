import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../util/resources/constants.dart';
import 'sort_event.dart';
import 'sort_state.dart';

@injectable
class SortBloc extends Bloc<SortEvent, SortState> {
  SortBloc() : super(SortState([SortType.priority, SortType.mostIm])) {
    on<SortEvent>(onChangeSortType);
  }

  void onChangeSortType(SortEvent event, Emitter emit) {
    if (event.sortType.contains(SortType.priority)) {
      if (event.sortType.contains(SortType.mostIm)) {
        emit(SortState([SortType.priority, SortType.mostIm]));
      } else {
        emit(SortState([SortType.priority, SortType.leastIm]));
      }
    } else if (event.sortType.contains(SortType.name)) {
      if (event.sortType.contains(SortType.aToZ)) {
        emit(SortState([SortType.name, SortType.aToZ]));
      } else {
        emit(SortState([SortType.name, SortType.zToA]));
      }
    } else if (event.sortType.contains(SortType.creationDate)) {
      if (event.sortType.contains(SortType.newest)) {
        emit(SortState([SortType.creationDate, SortType.newest]));
      } else {
        emit(SortState([SortType.creationDate, SortType.oldest]));
      }
    } else if (event.sortType.contains(SortType.expiryDate)) {
      if (event.sortType.contains(SortType.mostUrg)) {
        emit(SortState([SortType.expiryDate, SortType.mostUrg]));
      } else {
        emit(SortState([SortType.expiryDate, SortType.leastUrg]));
      }
    }
  }
}
