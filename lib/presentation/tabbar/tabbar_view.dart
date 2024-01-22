import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/process/view/processes_view.dart';
import 'package:axon_ivy/presentation/task/view/tasks_view.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:axon_ivy/util/widgets/bottom_tab_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/di/di_setup.dart';
import '../../core/generated/colors.gen.dart';
import '../profile/view/profile_view.dart';
import '../search/view/search_view.dart';
import '../task/bloc/filter_boc/filter_bloc.dart';
import '../task/bloc/filter_boc/filter_event.dart';
import '../task/bloc/sort_bloc/sort_bloc.dart';
import '../task/bloc/sort_bloc/sort_event.dart';
import '../task/bloc/task_bloc.dart';

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
  late TaskBloc _taskBloc;
  late FilterBloc _filterBloc;
  late SortBloc _sortBloc;
  late bool shouldFetchTaskData = false;

  int _selectedIndex = 0;
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
  }

  @override
  void initState() {
    super.initState();
    _filterBloc = getIt<FilterBloc>();
    _sortBloc = getIt<SortBloc>();
    _taskBloc = getIt<TaskBloc>();
    shouldFetchTaskData = true;
    fetchTaskData(shouldFetchTaskData);
  }

  void fetchTaskData(bool shouldFetchTaskData) {
    if (shouldFetchTaskData) {
      _taskBloc.add(const TaskEvent.getTasks(FilterType.all, false));
      _sortBloc
          .add(SortEvent([MainSortType.priority, SubSortType.mostImportant]));
      _filterBloc.add(FilterEvent(FilterType.all));
    }
    setState(() {
      this.shouldFetchTaskData = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _taskBloc),
        BlocProvider.value(value: _filterBloc),
        BlocProvider.value(value: _sortBloc),
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
