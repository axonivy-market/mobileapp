import 'package:freezed_annotation/freezed_annotation.dart';

part 'engine_info.freezed.dart';
part 'engine_info.g.dart';

@freezed
abstract class EngineInfo with _$EngineInfo {
  const factory EngineInfo({
    @Default('') String version,
    @Default('') String engineName,
    @Default('') String minimumSupportedMobileAppVersion,
  }) = _EngineInfo;

  factory EngineInfo.fromJson(Map<String, dynamic> json) =>
      _$EngineInfoFromJson(json);
}
