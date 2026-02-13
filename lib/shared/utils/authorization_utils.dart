import 'dart:convert';

import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/shared/storage/secure_storage.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';

class AuthorizationUtils {
  static String get authorizationHeader {
    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    final String username;
    final String password;
    if (isDemoSetting) {
      username = DemoConfig.demoUserName;
      password = DemoConfig.demoPassword;
    } else {
      username = SecureStorage.username ?? '';
      password = SecureStorage.password ?? '';
    }
    return 'Basic ${base64Encode(utf8.encode('$username:$password'))}';
  }
}
