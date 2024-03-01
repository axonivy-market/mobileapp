import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'offline_indicator_state.dart';

part 'offline_indicator_cubit.freezed.dart';

@injectable
class OfflineIndicatorCubit extends Cubit<OfflineIndicatorState> {
  OfflineIndicatorCubit() : super(const OfflineIndicatorState.isShow(false));

  void showOfflineIndicator(bool isNotEngineConnected) {
    emit(OfflineIndicatorState.isShow(isNotEngineConnected));
  }
}
