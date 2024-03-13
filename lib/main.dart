import 'package:axon_ivy/app.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:flutter/material.dart';

import 'core/app/demo_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppConfig.loadEnv(Environment.prod);
  await DemoConfig.loadDemoConfig();
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
