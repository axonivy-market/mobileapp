part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.appStarted() = AppStarted;

  const factory SplashState.appInfo(PackageInfo packageInfo) = AppInfo;
}
