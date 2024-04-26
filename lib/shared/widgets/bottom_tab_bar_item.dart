import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarTabItem extends BottomNavigationBarItem {
  const BottomBarTabItem({
    required this.initialLocation,
    required super.icon,
    super.label,
    super.activeIcon,
  });

  /// The initial location/path
  final String initialLocation;

  @override
  Widget get icon => Padding(
        padding: const EdgeInsets.only(bottom: 6, top: 6).r,
        child: super.icon,
      );

  @override
  Widget get activeIcon => Padding(
        padding: const EdgeInsets.only(bottom: 6, top: 6).r,
        child: super.activeIcon,
      );
}
