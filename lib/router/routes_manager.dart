import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/login/login_view.dart';
import 'package:axon_ivy/presentation/process/view/processes_view.dart';
import 'package:axon_ivy/presentation/search/view/search_view.dart';
import 'package:axon_ivy/presentation/splash/splash_view.dart';
import 'package:axon_ivy/presentation/tabbar/tabbar_view.dart';
import 'package:axon_ivy/presentation/profile/view/profile_view.dart';
import 'package:axon_ivy/presentation/task/view/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../presentation/qr/qr_view.dart';
import 'app_router.dart';
import 'custom_navigate_transition.dart';

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
        builder: (context, state, child) => TabBarScreen(
          child: child,
        ),
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.task,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: TasksView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.processes,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProcessesView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.search,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SearchView()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.profile,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileView()),
          )
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.login,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const LoginView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.qr,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const QRParentView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
    ],
  );
}
