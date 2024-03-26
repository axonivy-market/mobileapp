import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tabbar_cubit.freezed.dart';

part 'tabbar_state.dart';

@injectable
class TabBarCubit extends Cubit<TabBarState> {
  TabBarCubit() : super(const TabBarState.initial());

  void navigateTaskList(Map<dynamic, dynamic> taskInfo) {
    emit(TabBarState.navigateTasks(
        DateTime.now().millisecondsSinceEpoch, taskInfo));
  }
}
