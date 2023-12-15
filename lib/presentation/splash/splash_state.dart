import 'package:equatable/equatable.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class SplashState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppStarted extends SplashState {}

class AppInfo extends SplashState {
  final PackageInfo packageInfo;

  AppInfo({required this.packageInfo});

  @override
  List<Object?> get props => [packageInfo];
}
