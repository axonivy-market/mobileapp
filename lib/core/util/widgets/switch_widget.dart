import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchWidget extends StatelessWidget {
  final Function(bool) onThemeChanged;
  final Function(bool) onDemoModeChanged;
  final bool isDarkMode;
  final bool isDemoMode;

  const SwitchWidget({
    super.key,
    required this.onThemeChanged,
    required this.onDemoModeChanged,
    required this.isDarkMode,
    required this.isDemoMode,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isDemoMode) {
          onDemoModeChanged(!isDemoMode);
        } else {
          onThemeChanged(!isDarkMode);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 50.0.w,
        height: 30.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0).r,
          color: (isDarkMode || isDemoMode)
              ? Theme.of(context).colorScheme.tertiaryContainer
              : Theme.of(context).colorScheme.background,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2).r,
        alignment: isDarkMode || isDemoMode
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 25.0.w,
          height: 25.0.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (isDarkMode || isDemoMode)
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}