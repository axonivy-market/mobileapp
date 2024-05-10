import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/app_router.dart';
import 'package:axon_ivy/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:axon_ivy/features/process/presentation/bloc/process_bloc.dart';
import 'package:axon_ivy/features/process/presentation/pages/processes_page.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:axon_ivy/features/search/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:axon_ivy/features/search/presentation/pages/search_page.dart';
import 'package:axon_ivy/features/tabbar/bloc/engine_info_cubit/engine_info_cubit.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_bloc/task_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_conflict_cubit/task_conflict_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart';
import 'package:axon_ivy/features/task/presentation/pages/tasks_page.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../profile/presentation/pages/profile_page.dart';
import '../task/presentation/bloc/filter_bloc/filter_bloc.dart';
import '../task/presentation/bloc/filter_bloc/filter_event.dart';
import '../task/presentation/bloc/sort_bloc/sort_bloc.dart';
import '../task/presentation/bloc/sort_bloc/sort_event.dart';

extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}

class TabBarPage extends BasePage {
  const TabBarPage({super.key, required this.child});

  final Widget child;

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends BasePageState<TabBarPage> {
  late final TaskBloc _taskBloc;
  late final ProcessBloc _processBloc;
  late final SearchBloc _searchBloc;
  late final FilterBloc _filterBloc;
  late final ProfileBloc _profileBloc;
  late final SortBloc _sortBloc;
  late final OfflineIndicatorCubit _offlineIndicatorCubit;
  late final TabBarCubit _tabBarCubit;
  late final LoggedInCubit _loggedInCubit;
  late final ToastMessageCubit _toastMessageCubit;
  late final EngineInfoCubit _engineInfoCubit;
  late final TaskConflictCubit _taskConflictCubit;

  bool shouldFetchData = true;
  int selectedIndex = SharedPrefs.isLogin ?? false ? 0 : 3;

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != selectedIndex) {
      setState(() {
        selectedIndex = tabIndex;
      });
      switch (tabIndex) {
        case 0:
          _taskBloc.add(TaskEvent.getTasks(_filterBloc.state.activeFilter));
        case 1:
          _processBloc.add(const ProcessEvent.getProcess());
          break;
        case 2:
          _searchBloc.combineSearchItems(
              _taskBloc.sortDefaultTasks, _processBloc.processes);
          _engineInfoCubit.getEngineInfo();
          break;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _sortBloc = getIt<SortBloc>();
    _filterBloc = getIt<FilterBloc>();
    _taskBloc = getIt<TaskBloc>();
    _processBloc = getIt<ProcessBloc>();
    _searchBloc = getIt<SearchBloc>();
    _profileBloc = getIt<ProfileBloc>();
    _offlineIndicatorCubit = getIt<OfflineIndicatorCubit>();
    _tabBarCubit = getIt<TabBarCubit>();
    _loggedInCubit = getIt<LoggedInCubit>();
    _toastMessageCubit = getIt<ToastMessageCubit>();
    _engineInfoCubit = getIt<EngineInfoCubit>();

    _taskConflictCubit = getIt<TaskConflictCubit>();
    if (SharedPrefs.isLogin ?? false) {
      _taskBloc.add(const TaskEvent.getTasks(FilterType.all));
      _processBloc.add(const ProcessEvent.getProcess());
      getIt<NotificationBloc>()
          .add(const NotificationEvent.getNotifications(1, 9000));
    }
  }

  void fetchData() {
    _sortBloc
        .add(SortEvent([MainSortType.priority, SubSortType.mostImportant]));
    _filterBloc.add(FilterEvent(FilterType.all));
    _taskBloc.add(const TaskEvent.getTasks(FilterType.all));
    _processBloc.add(const ProcessEvent.getProcess());
    getIt<NotificationBloc>()
        .add(const NotificationEvent.getNotifications(1, 9000));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _processBloc),
        BlocProvider(create: (context) => _searchBloc),
        BlocProvider(create: (context) => _taskBloc),
        BlocProvider(create: (context) => _filterBloc),
        BlocProvider(create: (context) => _profileBloc),
        BlocProvider(create: (context) => _sortBloc),
        BlocProvider(create: (context) => _offlineIndicatorCubit),
        BlocProvider(create: (context) => _tabBarCubit),
        BlocProvider(create: (context) => _loggedInCubit),
        BlocProvider(create: (context) => _toastMessageCubit),
        BlocProvider(create: (context) => _engineInfoCubit),
        BlocProvider(create: (context) => _taskConflictCubit),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoggedInCubit, LoggedInState>(
            listener: (context, state) {
              if (state is LoggedInSuccessState && state.isLoggedIn) {
                fetchData();
              }
            },
          ),
          BlocListener<TabBarCubit, TabBarState>(listener: (context, state) {
            if (state is NavigateTasksState) {
              _onItemTapped(context, 0);
              final filterState = context.read<FilterBloc>().state;
              context.read<TaskBloc>().add(
                    TaskEvent.getTasks(filterState.activeFilter),
                  );
              context.read<ToastMessageCubit>().showToastMessage(state.taskId);
            }
          }),
          BlocListener<TaskConflictCubit, TaskConflictState>(
            listener: (context, taskConflictState) {
              if (taskConflictState is LoadingState) {
                showLoading();
              } else {
                hideLoading();
                if (taskConflictState is TaskStartableState) {
                  _navigateTaskActivity(context, taskConflictState.task);
                } else if (taskConflictState is TaskUnstartableState) {
                  showMessageDialog(
                    title: 'taskConflict.title'.tr(),
                    message: taskConflictState.message,
                    onConfirm: () => _taskBloc.add(
                        TaskEvent.getTasks(_filterBloc.state.activeFilter)),
                    barrierDismissible: false,
                  );
                }
              }
            },
          ),
        ],
        child: Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: const [
              TasksPage(),
              ProcessesPage(),
              SearchPage(),
              ProfilePage()
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              height: Constants.bottomNavigationBarHeight.w,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1.0.w,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: customNavItem(
                      svgPath: AppAssets.icons.list.path,
                      label: tr("bottomTabBar.tasks"),
                      index: 0,
                      onPressed: () {
                        _onItemTapped(context, 0);
                        context.go(AppRoutes.task);
                      },
                    ),
                  ),
                  Expanded(
                    child: customNavItem(
                      svgPath: AppAssets.icons.process.path,
                      label: tr('bottomTabBar.processes'),
                      index: 1,
                      onPressed: () {
                        _onItemTapped(context, 1);
                        context.go(AppRoutes.processes);
                      },
                    ),
                  ),
                  Expanded(
                    child: customNavItem(
                      svgPath: AppAssets.icons.search.path,
                      label: tr('bottomTabBar.search'),
                      index: 2,
                      onPressed: () {
                        _onItemTapped(context, 2);
                        context.go(AppRoutes.search);
                      },
                    ),
                  ),
                  Expanded(
                    child: customNavItem(
                      svgPath: AppAssets.icons.user.path,
                      label: tr('bottomTabBar.profile'),
                      index: 3,
                      onPressed: () {
                        _onItemTapped(context, 3);
                        context.go(AppRoutes.profile);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customNavItem({
    required String svgPath,
    required String label,
    required int index,
    required VoidCallback onPressed,
  }) {
    bool isSelected = index == selectedIndex;
    return BlocBuilder<LoggedInCubit, LoggedInState>(
      builder: (context, state) {
        bool isLoggedIn = SharedPrefs.isLogin ?? false;
        return InkResponse(
          onTap: isLoggedIn ? onPressed : null,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                height: 21.h,
                svgPath,
                colorFilter: isSelected
                    ? ColorFilter.mode(
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn,
                      )
                    : ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary,
                        BlendMode.srcIn,
                      ),
              ),
              Text(
                label,
                style: GoogleFonts.inter(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                  fontSize: 13.sp,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _navigateTaskActivity(BuildContext context, TaskIvy taskIvy) {
    context.push(AppRoutes.taskActivity, extra: {
      'task': taskIvy,
      'path': taskIvy.fullRequestPath
    }).then((value) {
      if (value != null && value is int) {
        context.read<TabBarCubit>().navigateTaskList(value);
      } else if (value is bool && value == true) {
        context.read<TaskBloc>().add(const TaskEvent.getTasks(FilterType.all));
      }
    });
  }
}
