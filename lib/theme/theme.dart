import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      background: AppColors.white,
      primary: AppColors.tropicSea,
      secondary: AppColors.bleachedSilk,
      tertiary: AppColors.skyBus),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: AppColors.shoeWax,
    primary: AppColors.gray,
    tertiary: AppColors.sonicSilver,
  ),
  useMaterial3: true,
);
