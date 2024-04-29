import 'package:axon_ivy/features/process/presentation/pages/processes_page.dart';
import 'package:axon_ivy/features/profile/presentation/pages/login_page.dart';
import 'package:axon_ivy/features/profile/presentation/pages/profile_page.dart';
import 'package:axon_ivy/features/search/presentation/pages/search_page.dart';
import 'package:axon_ivy/features/splash/splash_page.dart';
import 'package:axon_ivy/features/tabbar/tabbar_page.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/pages/document_list_page.dart';
import 'package:axon_ivy/features/task/presentation/pages/task_activity.dart';
import 'package:axon_ivy/features/task/presentation/pages/tasks_page.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/profile/presentation/pages/qr_page.dart';
import 'app_router.dart';
import 'custom_navigate_transition.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.splash,
    observers: [BotToastNavigatorObserver()],
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, __) => const SplashPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.taskActivity,
        pageBuilder: (_, state) => CustomTransitionPage(
          key: state.pageKey,
          child: TaskActivityPage(
            taskIvy: (state.extra as Map<String, dynamic>)[
                'task'], // if starting process, taskIvy would be null
            fullRequestPath: (state.extra as Map<String, dynamic>)['path'],
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => TabBarPage(
          child: child,
        ),
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.task,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: TasksPage()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.processes,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProcessesPage()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.search,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SearchPage()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: AppRoutes.profile,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfilePage()),
          )
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.login,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const LoginPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.qr,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const QRParentPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.documentList,
        name: 'documentList',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: DocumentListPage(task: state.extra as TaskIvy),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              iosTransition(context, animation, secondaryAnimation, child),
        ),
      ),
    ],
  );
}
