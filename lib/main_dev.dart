import 'package:axon_ivy/app.dart';
import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppConfig.loadEnv(Environment.dev);
  final appRouter = AppRouter();
  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: DevicePreview(
        enabled: true,
        builder: (context) => MyApp(
          appRouter: appRouter,
        ),
      ),
    ),
  );
}
