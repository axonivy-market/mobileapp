import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const AppStarted());
  late Timer appStartTimer;

  Future<void> goToHomeScreen() async {
    appStartTimer = Timer(const Duration(seconds: 2), () {
      emit(const AppStarted());
    });
  }

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    emit(AppInfo(info));
  }

  @override
  Future<void> close() {
    appStartTimer.cancel();
    return super.close();
  }
}
