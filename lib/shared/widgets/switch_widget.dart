import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchWidget extends StatelessWidget {
  final Function(bool) onChanged;
  final bool isActive;

  const SwitchWidget({
    super.key,
    required this.onChanged,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isActive);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 50.0.h,
        height: 29.0.h,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(142.0).r,
          color: isActive
              ? Theme.of(context).colorScheme.tertiaryContainer
              : Theme.of(context).colorScheme.surface,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 3).h,
        alignment: isActive ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 22.0.h,
          height: 22.0.h,
          // color: Theme.of(context).colorScheme.primary,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}
