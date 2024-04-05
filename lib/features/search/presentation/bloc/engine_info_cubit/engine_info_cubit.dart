import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:axon_ivy/features/search/domain/usecases/get_engine_info_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'engine_info_cubit.freezed.dart';
part 'engine_info_state.dart';

@injectable
class EngineInfoCubit extends Cubit<EngineInfoState> {
  final GetEngineInfoUseCase _engineInfoRepository;

  EngineInfoCubit(this._engineInfoRepository)
      : super(const EngineInfoState.initialize());

  void getEngineInfo() async {
    try {
      final engineInfo = await _engineInfoRepository.execute();

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
