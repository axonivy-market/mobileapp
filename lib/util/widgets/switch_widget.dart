import 'package:flutter/material.dart';

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
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).colorScheme.tertiaryContainer,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        alignment: isDarkMode || isDemoMode
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

