import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme(ThemeData themeData) = ChangeTheme;
}
