import 'dart:convert';

import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';

class AuthorizationUtils {
  static String get authorizationHeader {
    late String username;
    late String password;
    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    if (isDemoSetting) {
      username = DemoConfig.demoUserName;
      password = DemoConfig.demoPassword;
    } else {
      username = SharedPrefs.getUsername ?? '';
      password = SharedPrefs.getPassword ?? '';
    }

    return 'Basic ${base64Encode(utf8.encode('$username:$password'))}';
  }
}
