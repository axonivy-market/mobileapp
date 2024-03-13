import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:axon_ivy/app.dart';
import 'package:axon_ivy/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppConfig.loadEnv(Environment.dev);
  await DemoConfig.loadDemoConfig();
  // TODO for test
  print(
      "demo config: ${DemoConfig.demoServerUrl} == ${DemoConfig.demoUserName} == ${DemoConfig.demoPassword}");
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
