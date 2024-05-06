import 'package:freezed_annotation/freezed_annotation.dart';
part 'qr_model.freezed.dart';

part 'qr_model.g.dart';

@freezed
class QRModel with _$QRModel {
  const factory QRModel({
    @Default("") String loginUrl,
    @Default("") String username,
  }) = _QRModel;

  factory QRModel.fromJson(Map<String, dynamic> json) =>
      _$QRModelFromJson(json);
}
