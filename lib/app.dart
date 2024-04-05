import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/features/theme/bloc/theme_bloc.dart';
import 'package:axon_ivy/features/theme/bloc/theme_state.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    final isDarkmode = SharedPrefs.themeSetting ?? false;
    const designWidth = 393.0;
    const designHeight = 852.0;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ThemeBloc(initialDarkMode: isDarkmode)),
        BlocProvider(create: (context) => getIt<ConnectivityBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(designWidth, designHeight),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) => MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter.router,
              theme: state.themeData,
              builder: (context, child) {
                return botToastBuilder(context, child!);
              },
            ),
          );
        },
      ),
    );
  }
}
