import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    ThemeData? themeData,
  }) = _ThemeState;

  // Factory constructor for initializing with light theme
  factory ThemeState.light() {
    return ThemeState(themeData: ThemeData.light());
  }

  // Factory constructor for initializing with dark theme
  factory ThemeState.dark() {
    return ThemeState(themeData: ThemeData.dark());
  }
}
