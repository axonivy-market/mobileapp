import 'package:axon_ivy/features/login/login_view.dart';
import 'package:axon_ivy/features/process/view/processes_view.dart';
import 'package:axon_ivy/features/profile/view/profile_view.dart';
import 'package:axon_ivy/features/search/view/search_view.dart';
import 'package:axon_ivy/features/splash/splash_view.dart';
import 'package:axon_ivy/features/tabbar/tabbar_view.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/pages/document_list_page.dart';
import 'package:axon_ivy/features/task/presentation/pages/task_activity.dart';
import 'package:axon_ivy/features/task/presentation/pages/tasks_page.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/qr/qr_view.dart';
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
        builder: (_, __) => const SplashView(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.taskActivity,
        pageBuilder: (_, state) => CustomTransitionPage(
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
