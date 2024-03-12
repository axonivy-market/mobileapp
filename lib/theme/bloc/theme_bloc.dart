import 'package:axon_ivy/theme/bloc/theme_event.dart';
import 'package:axon_ivy/theme/bloc/theme_state.dart';
import 'package:axon_ivy/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final bool initialDarkMode;

  ThemeBloc({required this.initialDarkMode})
      : super(initialDarkMode
            ? ThemeState(themeData: darkMode)
            : ThemeState(themeData: lightMode)) {
    on<ChangeTheme>(_changeTheme);
  }

  Future<void> _changeTheme(ChangeTheme event, Emitter<ThemeState> emit) async {
    ThemeData newTheme =
        event.themeData.brightness == Brightness.dark ? darkMode : lightMode;
    emit(ThemeState(themeData: newTheme));
  }
}
