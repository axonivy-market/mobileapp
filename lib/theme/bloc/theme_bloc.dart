import 'package:axon_ivy/theme/bloc/theme_event.dart';
import 'package:axon_ivy/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: ThemeData.light())) {
    on<ChangeTheme>(_changeTheme);
  }

  void _changeTheme(ChangeTheme event, Emitter<ThemeState> emit) {
    emit(state.copyWith(themeData: event.themeData));
  }
}
