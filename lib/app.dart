import 'package:axon_ivy/router/router.dart';
import 'package:axon_ivy/theme/bloc/theme_bloc.dart';
import 'package:axon_ivy/theme/bloc/theme_state.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          print(state.themeData.toString());
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.router,
            theme: state.themeData,
            builder: (context, child) {
              return botToastBuilder(context, child!);
            },
          );
        },
      ),
    );
  }
}
