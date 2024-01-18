import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/process/bloc/process_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:axon_ivy/util/widgets/bottom_tab_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/generated/colors.gen.dart';
import '../process/view/processes_view.dart';
import '../profile/view/profile_view.dart';
import '../search/view/search_view.dart';
import '../task/view/tasks_view.dart';

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
  int _selectedIndex = 0;
  late final TaskBloc _taskBloc;
  late final ProcessBloc _processBloc;
  late final SearchBloc _searchBloc;
  final tabs = [
    BottomBarTabItem(
      initialLocation: AppRoutes.task,
      icon: AppAssets.icons.list.svg(),
      activeIcon: AppAssets.icons.list.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr("bottomTabBar.tasks"),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.processes,
      icon: AppAssets.icons.process.svg(),
      activeIcon: AppAssets.icons.process.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr('bottomTabBar.processes'),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.search,
      icon: AppAssets.icons.search.svg(),
      activeIcon: AppAssets.icons.search.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr('bottomTabBar.search'),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.profile,
      icon: AppAssets.icons.user.svg(),
      activeIcon: AppAssets.icons.user.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr('bottomTabBar.profile'),
    )
  ];

  // getter that computes the current index from the current location,
  // using the helper method below
  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location());

  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      _selectedIndex = tabIndex;
      // go to the initial location of the selected tab (by index)
      context.go(tabs[tabIndex].initialLocation);
    }
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

  @override
  void initState() {
    super.initState();
    _taskBloc = getIt<TaskBloc>();
    _processBloc = getIt<ProcessBloc>();
    _searchBloc = getIt<SearchBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              _taskBloc..add(const TaskEvent.getTasks(FilterType.all)),
        ),
        BlocProvider(
          create: (context) => _processBloc,
        ),
        BlocProvider(
          create: (context) => _searchBloc,
        ),
      ],
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            TasksView(),
            ProcessesView(),
            SearchView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: AppColors.mercury, width: 1.0),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w400),
            currentIndex: _currentIndex,
            selectedItemColor: AppColors.tropicSea,
            items: tabs,
            onTap: (index) => _onItemTapped(context, index),
          ),
        ),
      ),
    );
  }
}
