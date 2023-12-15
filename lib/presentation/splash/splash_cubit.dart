import 'dart:async';

import 'package:axon_ivy/presentation/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(AppStarted());
  late Timer appStartTimer;

  Future<void> goToHomeScreen() async {
    appStartTimer = Timer(const Duration(seconds: 2), () {
      emit(AppStarted());
    });
  }

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    emit(AppInfo(packageInfo: info));
  }

  @override
  Future<void> close() {
    appStartTimer.cancel();
    return super.close();
  }
}
