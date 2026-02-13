import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../generated/assets.gen.dart';

enum Environment { dev, prod }

class AppConfig {
  static Environment env = Environment.dev;
  static PackageInfo? _packageInfo;

  static String get appVersionName {
    if (_packageInfo != null) {
      return '${_packageInfo?.version.split(' ').first}';
    } else {
      return '';
    }
  }

  static String get fullAppVersion {
    if (_packageInfo != null) {
      return '${_packageInfo?.version.split(' ').first} (${_packageInfo?.buildNumber})';
    } else {
      return '';
    }
  }

  static String get appName {
    return _packageInfo?.appName ?? "axon_ivy";
  }

  static String baseUrl = '';

  static Future<void> _checkEnv() async {
    _packageInfo = await PackageInfo.fromPlatform();
    final packageName = _packageInfo?.packageName;
    try {
      env = Environment.values.byName(packageName?.split('.').last ?? '');
    } catch (e) {
      env = Environment.prod;
    }
  }

  static Future<void> loadEnv(Environment environment) async {
    env = environment;
    await _checkEnv();
    debugPrint('$env');
    var fileName = '';
    switch (environment) {
      case Environment.dev:
        fileName = AppAssets.env.aEnvDev;
        break;
      case Environment.prod:
        fileName = AppAssets.env.aEnvProd;
        break;
    }
    await dotenv.load(fileName: fileName);
    baseUrl = dotenv.env['BASE_URL'] ?? '';
    debugPrint(baseUrl);
  }

  static String get serverUrl {
    if (SharedPrefs.demoSetting == true) {
      return DemoConfig.demoServerUrl;
    } else {
      return SharedPrefs.getBaseUrl ?? '';
    }
  }
}
