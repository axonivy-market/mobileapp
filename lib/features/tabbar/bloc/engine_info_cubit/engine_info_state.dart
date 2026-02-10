part of 'engine_info_cubit.dart';

@freezed
abstract class EngineInfoState with _$EngineInfoState {
  const factory EngineInfoState.initialize() = Initialize;

  const factory EngineInfoState.getEngineInfo(
      {@Default(null) EngineInfo? engineInfo}) = GetEngineInfo;
}
