import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DemoConfig {
  static String demoServerUrl = '';
  static String demoUserName = '';
  static String demoPassword = '';

  static Future<void> loadDemoConfig() async {
    if (kReleaseMode) {
      await dotenv.load(fileName: AppAssets.env.aEnvDemo);
      demoServerUrl = dotenv.env['demoServerUrl'] ?? '';
      demoUserName = dotenv.env['demoUserName'] ?? '';
      demoPassword = dotenv.env['demoPassword'] ?? '';
    }
  }
}
