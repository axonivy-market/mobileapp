import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tabbar_state.dart';

part 'tabbar_cubit.freezed.dart';

@injectable
class TabBarCubit extends Cubit<TabBarState> {
  TabBarCubit() : super(const TabBarState.initial());

  void navigateTaskList() {
    emit(const TabBarState.navigateTasks());
  }
}
