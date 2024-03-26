import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:axon_ivy/data/repositories/engine/engine_info_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'engine_info_state.dart';

part 'engine_info_cubit.freezed.dart';

@injectable
class EngineInfoCubit extends Cubit<EngineInfoState> {
  final EngineInfoRepository _engineInfoRepository;

  EngineInfoCubit(this._engineInfoRepository)
      : super(const EngineInfoState.initialize());

  void getEngineInfo() async {
    try {
      final engineInfo =
          await _engineInfoRepository.getEngineInfo(CancelToken());

      engineInfo.fold(
        (l) {
          emit(const EngineInfoState.getEngineInfo());
        },
        (r) {
          emit(EngineInfoState.getEngineInfo(engineInfo: r));
        },
      );
    } catch (e) {
      emit(const EngineInfoState.getEngineInfo());
    }
  }
}
