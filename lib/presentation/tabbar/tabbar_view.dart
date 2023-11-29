import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/generated/colors.gen.dart';
import '../util/widgets/bottom_tab_bar_item.dart';

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
  const TabBarScreen({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final tabs = [
    BottomBarTabItem(
      initialLocation: '/task',
      icon: AppAssets.icons.taskBottomBar.svg(
          height: 20,
          colorFilter: const ColorFilter.mode(
            AppColors.babyTalkGrey,
            BlendMode.srcIn,
          )),
      activeIcon: AppAssets.icons.taskBottomBar.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.blueRibbon,
          BlendMode.srcIn,
        ),
      ),
      label: tr("Tasks"),
    ),
    BottomBarTabItem(
      initialLocation: '/processes',
      icon: AppAssets.icons.processBottomBar.svg(
        height: 20,
      ),
      activeIcon: AppAssets.icons.processBottomBar.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.blueRibbon,
          BlendMode.srcIn,
        ),
      ),
      label: tr('Processes'),
    ),
    BottomBarTabItem(
      initialLocation: '/search',
      icon: AppAssets.icons.searchBottomBar.svg(
        height: 20,
      ),
      activeIcon: AppAssets.icons.searchBottomBar.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.blueRibbon,
          BlendMode.srcIn,
        ),
      ),
      label: tr('Search'),
    ),
    BottomBarTabItem(
      initialLocation: '/profile',
      icon: AppAssets.icons.settingBottomBar.svg(
        height: 20,
      ),
      activeIcon: AppAssets.icons.settingBottomBar.svg(
        height: 20,
        colorFilter: const ColorFilter.mode(
          AppColors.blueRibbon,
          BlendMode.srcIn,
        ),
      ),
      label: tr('Profile'),
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
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.blueRibbon,
        items: tabs,
        onTap: (index) => _onItemTapped(context, index),
      ),
    );
  }
}
