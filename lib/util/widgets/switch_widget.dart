import 'package:flutter/material.dart';

import '../../core/generated/colors.gen.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isDemo = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDemo = !isDemo;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: isDemo ? AppColors.skyBus : Colors.grey.shade400,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        alignment: isDemo ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDemo ? AppColors.tropicSea : Colors.white,
          ),
        ),
      ),
    );
  }
}
