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
        width: 50.0.w,
        height: 30.0.h,
        decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.outline, width: 1.0),
          borderRadius: BorderRadius.circular(15.0),
          color: isActive
              ? Theme.of(context).colorScheme.tertiaryContainer
              : Theme.of(context).colorScheme.background,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2).r,
        alignment: isActive
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 25.0.w,
          height: 25.0.h,
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
