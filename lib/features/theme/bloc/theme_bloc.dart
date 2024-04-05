import 'package:axon_ivy/core/theme/theme.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/features/theme/bloc/theme_event.dart';
import 'package:axon_ivy/features/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
    await clearCookies();
    emit(ThemeState(themeData: newTheme));

    SharedPrefs.setThemeSetting(event.themeData.brightness == Brightness.dark);
  }

  Future<void> clearCookies() async {
    final cookieManager = CookieManager.instance();
    await cookieManager.deleteAllCookies();
  }
}
