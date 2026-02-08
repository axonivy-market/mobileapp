import 'package:axon_ivy/app.dart';
import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/shared/extensions/hive_ext.dart';
import 'package:axon_ivy/shared/storage/secure_storage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppConfig.loadEnv(Environment.dev);
  await DemoConfig.loadDemoConfig();
  await Hive.initHiveFlutter();
  Hive.registerAdapter(TaskIvyAdapter());
  Hive.registerAdapter(CaseTaskAdapter());
  Hive.registerAdapter(DocumentAdapter());
  final encryptionKeyUint8List = await SecureStorage.encryptionKeyUint8List();
  await Hive.openBox<TaskIvy>(Constants.taskBox,
      encryptionCipher: HiveAesCipher(encryptionKeyUint8List));
  final appRouter = AppRouter();
  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: DevicePreview(
        enabled: false,
        builder: (context) => MyApp(
          appRouter: appRouter,
        ),
      ),
    ),
  );
}
