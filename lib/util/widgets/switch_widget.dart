import 'package:flutter/material.dart';

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
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: isSwitchTurnOn
                ? Theme.of(context).colorScheme.tertiaryContainer
                : Theme.of(context).colorScheme.background,
            border: isSwitchTurnOn
                ? null
                : Border.all(
                    color: Theme.of(context).colorScheme.outline,
                  )),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        alignment:
            isSwitchTurnOn ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 22.0,
          height: 22.0,
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
