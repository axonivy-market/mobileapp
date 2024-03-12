import 'package:axon_ivy/router/router.dart';
import 'package:axon_ivy/theme/bloc/theme_bloc.dart';
import 'package:axon_ivy/theme/bloc/theme_state.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return FutureBuilder<bool>(
      future: getThemePreference(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: LoadingWidget(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          final bool isDarkMode = snapshot.data ?? false;
          return BlocProvider(
            create: (context) => ThemeBloc(initialDarkMode: isDarkMode),
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
      },
    );
  }

  Future<bool> getThemePreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDarkMode') ?? false;
  }
}
