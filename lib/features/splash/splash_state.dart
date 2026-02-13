part of 'splash_cubit.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.appStarted() = AppStarted;

  const factory SplashState.appInfo(PackageInfo packageInfo) = AppInfo;
}
