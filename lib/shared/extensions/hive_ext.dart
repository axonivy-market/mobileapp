import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

extension HiveExt on HiveInterface {
  Future<void> initHiveFlutter([String? subDir]) async {
    var appDir = await getApplicationSupportDirectory();
    if (Platform.isIOS) {
      appDir = await getLibraryDirectory();
    }
    init(path.join(appDir.path,
        "${AppConfig.appName.replaceAll(' ', '_').toLowerCase()}_db"));
  }
}
