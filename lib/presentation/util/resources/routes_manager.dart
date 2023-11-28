import 'package:axon_ivy/presentation/process/view/processes_view.dart';
import 'package:axon_ivy/presentation/search/view/search_view.dart';
import 'package:axon_ivy/presentation/setting/view/settings_view.dart';
import 'package:axon_ivy/presentation/task/view/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../tabbar/tabbar_view.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  // final AppPreferences _sharedPreference;

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    // initialLocation:
    //     _sharedPreference.accessToken.isEmpty ? '/on-boarding' : '/home',
    initialLocation: '/task',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => TabBarScreen(child: child),
        routes: [
          GoRoute(
            path: '/task',
            pageBuilder: (_, __) => const NoTransitionPage(child: TasksView()),
          ),
          GoRoute(
            path: '/processes',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: ProcessesView()),
          ),
          GoRoute(
            path: '/search',
            pageBuilder: (_, __) => const NoTransitionPage(child: SearchView()),
          ),
          GoRoute(
            path: '/settings',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SettingsView()),
          )
        ],
      )
    ],
  );
}
