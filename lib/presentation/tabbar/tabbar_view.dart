import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/widgets/bottom_tab_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/generated/colors.gen.dart';

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
  final tabs = [
    BottomBarTabItem(
      initialLocation: AppRoutes.task,
      icon: AppAssets.icons.list.svg(
        height: 20,
      ),
      activeIcon: AppAssets.icons.list.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr("bottomTabBar.tasks"),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.processes,
      icon: AppAssets.icons.process.svg(height: 20),
      activeIcon: AppAssets.icons.process.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr('bottomTabBar.processes'),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.search,
      icon: AppAssets.icons.search.svg(height: 20),
      activeIcon: AppAssets.icons.search.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.tropicSea,
          BlendMode.srcIn,
        ),
      ),
      label: tr('bottomTabBar.search'),
    ),
    BottomBarTabItem(
      initialLocation: AppRoutes.profile,
      icon: AppAssets.icons.user.svg(height: 20),
      activeIcon: AppAssets.icons.user.svg(
        height: 20,
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
      // go to the initial location of the selected tab (by index)
      context.go(tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
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
    );
  }
}
