import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchWidget extends StatelessWidget {
  final Function(bool) onSwitchChanged;
  final bool isSwitchTurnOn;

  const SwitchWidget({
    super.key,
    required this.onSwitchChanged,
    required this.isSwitchTurnOn,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSwitchChanged(!isSwitchTurnOn);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 50.0.w,
        height: 30.0.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0).r,
            color: isSwitchTurnOn
                ? Theme.of(context).colorScheme.tertiaryContainer
                : Theme.of(context).colorScheme.background,
            border: isSwitchTurnOn
                ? null
                : Border.all(
              color: Theme.of(context).colorScheme.outline,
            )),
        padding: const EdgeInsets.symmetric(horizontal: 2).r,
        alignment: isSwitchTurnOn
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 22.0.w,
          height: 22.0.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSwitchTurnOn
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}
