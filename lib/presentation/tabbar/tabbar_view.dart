import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/process/bloc/process_bloc.dart';
import 'package:axon_ivy/presentation/process/view/processes_view.dart';
import 'package:axon_ivy/presentation/profile/bloc/logged_in_cubit.dart';
import 'package:axon_ivy/presentation/profile/bloc/profile_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/offline_indicator_cubit.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/presentation/task/view/tasks_view.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/generated/colors.gen.dart';
import '../profile/view/profile_view.dart';
import '../search/view/search_view.dart';
import '../task/bloc/filter_boc/filter_bloc.dart';
import '../task/bloc/filter_boc/filter_event.dart';
import '../task/bloc/sort_bloc/sort_bloc.dart';
import '../task/bloc/sort_bloc/sort_event.dart';

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

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key, required this.child});

  final Widget child;

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  late final TaskBloc _taskBloc;
  late final ProcessBloc _processBloc;
  late final SearchBloc _searchBloc;
  late final FilterBloc _filterBloc;
  late final ProfileBloc _profileBloc;
  late final SortBloc _sortBloc;
  late final OfflineIndicatorCubit _offlineIndicatorCubit;
  late final TabBarCubit _tabBarCubit;
  late final LoggedInCubit _loggedInCubit;
  bool shouldFetchData = true;
  int selectedIndex = SharedPrefs.isLogin ?? false ? 0 : 3;

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != selectedIndex) {
      setState(() {
        selectedIndex = tabIndex;
      });
      switch (tabIndex) {
        case 1:
          _processBloc.add(const ProcessEvent.getProcess());
          break;
        case 2:
          _searchBloc.combineSearchItems(
              _taskBloc.sortDefaultTasks, _processBloc.processes);
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
    if (SharedPrefs.isLogin ?? false) {
      _taskBloc.add(const TaskEvent.getTasks(FilterType.all));
      _processBloc.add(const ProcessEvent.getProcess());
    }
  }

  void fetchData() {
    _sortBloc
        .add(SortEvent([MainSortType.priority, SubSortType.mostImportant]));
    _filterBloc.add(FilterEvent(FilterType.all));
    _taskBloc.add(const TaskEvent.getTasks(FilterType.all));
    _processBloc.add(const ProcessEvent.getProcess());
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
              context
                  .read<TaskBloc>()
                  .add(TaskEvent.getTasks(filterState.activeFilter));
            }
          }),
        ],
        child: Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: const [
              TasksView(),
              ProcessesView(),
              SearchView(),
              ProfileView()
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(top: 14, bottom: 14),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.mercury, width: 1.0),
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
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        bool isLoggedIn = SharedPrefs.isLogin ?? false;
        return InkResponse(
          onTap: isLoggedIn ? onPressed : null,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                svgPath,
                colorFilter: isSelected
                    ? const ColorFilter.mode(
                        AppColors.tropicSea,
                        BlendMode.srcIn,
                      )
                    : const ColorFilter.mode(
                        AppColors.sonicSilver,
                        BlendMode.srcIn,
                      ),
              ),
              Text(
                label,
                style: GoogleFonts.inter(
                  color:
                      isSelected ? AppColors.tropicSea : AppColors.sonicSilver,
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
