import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.tropicSea),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return botToastBuilder(context, child!);
      },
    );
  }
}
