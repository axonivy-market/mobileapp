import 'package:axon_ivy/presentation/process/view/processes_view.dart';
import 'package:axon_ivy/presentation/search/view/search_view.dart';
import 'package:axon_ivy/presentation/setting/view/profile_view.dart';
import 'package:axon_ivy/presentation/splash/splash_view.dart';
import 'package:axon_ivy/presentation/tabbar/tabbar_view.dart';
import 'package:axon_ivy/presentation/task/view/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, __) => const SplashView(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => TabBarScreen(child: child),
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.task,
            pageBuilder: (_, __) => const NoTransitionPage(child: TasksView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.processes,
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: ProcessesView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.search,
            pageBuilder: (_, __) => const NoTransitionPage(child: SearchView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.profile,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileView()),
          )
        ],
      )
    ],
  );
}
