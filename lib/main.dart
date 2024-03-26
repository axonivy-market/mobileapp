import 'package:axon_ivy/app.dart';
import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/core/utils/secure_storage.dart';
import 'package:axon_ivy/data/models/task/case/case.dart';
import 'package:axon_ivy/data/models/task/documents/document.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppConfig.loadEnv(Environment.prod);
  await Hive.initFlutter();
  Hive.registerAdapter(TaskIvyImplAdapter());
  Hive.registerAdapter(CaseTaskImplAdapter());
  Hive.registerAdapter(DocumentImplAdapter());
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
      child: MyApp(
        appRouter: appRouter,
      ),
    ),
  );
}
