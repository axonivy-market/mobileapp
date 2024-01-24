import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String name,
    required String email,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json)=> _$ProfileFromJson(json);
}