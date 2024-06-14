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

  BuildContext getThemeContext();
}

class TabSelected extends TabFilterStyle {
  final String name;
  final BorderRadius radius;
  final BoxBorder border;
  final BuildContext context;

  TabSelected(
      {required this.name,
      required this.radius,
      required this.border,
      required this.context})
      : super(
          borderRadius: radius,
          backgroundColor: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w500,
          textButton: name,
          boxBorder: border,
        );

  @override
  BuildContext getThemeContext() {
    return context;
  }
}

class TabUnSelected extends TabFilterStyle {
  final String name;
  final BorderRadius radius;
  final BoxBorder? border;
  final BuildContext context;

  TabUnSelected(
      {required this.name,
      required this.radius,
      required this.border,
      required this.context})
      : super(
          borderRadius: radius,
          backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          textColor: Theme.of(context).colorScheme.onSecondary,
          fontWeight: FontWeight.w400,
          textButton: name,
          boxBorder: border,
        );

  @override
  BuildContext getThemeContext() {
    return context;
  }
}
