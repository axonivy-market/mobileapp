import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
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
    final isDarkmode = SharedPrefs.themeSetting ?? false;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ThemeBloc(initialDarkMode: isDarkmode)),
        BlocProvider(create: (context) => getIt<ConnectivityBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
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
