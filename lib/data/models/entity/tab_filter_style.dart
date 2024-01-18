import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';

abstract class TabFilterStyle {
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final String textButton;
  final BoxBorder? boxBorder;

  TabFilterStyle({
    required this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
    required this.fontWeight,
    required this.textButton,
    this.boxBorder,
  });
}

class TabSelected extends TabFilterStyle {
  final String name;
  final BorderRadius radius;
  final BoxBorder? border;

  TabSelected({required this.name, required this.radius, this.border})
      : super(
          borderRadius: radius,
          backgroundColor: AppColors.tropicSea,
          textColor: Colors.white,
          fontWeight: FontWeight.w500,
          textButton: name,
          boxBorder: border,
        );
}

class TabUnSelected extends TabFilterStyle {
  final String name;
  final BorderRadius radius;
  final BoxBorder? border;

  TabUnSelected({required this.name, required this.radius, this.border})
      : super(
          borderRadius: radius,
          backgroundColor: AppColors.bleachedSilk,
          textColor: AppColors.sonicSilver,
          fontWeight: FontWeight.w400,
          textButton: name,
          boxBorder: border,
        );
}
