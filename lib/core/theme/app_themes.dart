import 'package:axon_ivy/generated/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: const ColorScheme.light(
    surface: AppColors.white,
    surfaceContainerLowest: AppColors.white,
    surfaceContainerLow: AppColors.white,
    surfaceContainer: AppColors.white,
    surfaceContainerHigh: AppColors.white,
    surfaceContainerHighest: AppColors.white,
    onSurface: AppColors.eerieBlack,
    onSurfaceVariant: AppColors.eerieBlack,
    primary: AppColors.tropicSea,
    onPrimary: AppColors.white,
    primaryContainer: AppColors.placebo,
    onPrimaryContainer: AppColors.zhenZhuBaiPear,
    secondary: AppColors.blackMana,
    onSecondary: AppColors.shadowedSteel,
    secondaryContainer: AppColors.kinglyCloud,
    tertiaryContainer: AppColors.skyBus,
    outline: AppColors.mercury,
    error: AppColors.silkenRuby,
  ),
  useMaterial3: true,
  dividerTheme: const DividerThemeData(
    color: AppColors.mercury,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.shoeWax,
  colorScheme: const ColorScheme.dark(
    surface: AppColors.shoeWax,
    surfaceContainerLowest: AppColors.shoeWax,
    surfaceContainerLow: AppColors.shoeWax,
    surfaceContainer: AppColors.shoeWax,
    surfaceContainerHigh: AppColors.shoeWax,
    surfaceContainerHighest: AppColors.shoeWax,
    onSurface: AppColors.white,
    onSurfaceVariant: AppColors.white,
    primary: AppColors.drwhite,
    onPrimary: AppColors.shoeWax,
    primaryContainer: AppColors.blackOak,
    onPrimaryContainer: AppColors.lacqueredLiquorice,
    secondary: AppColors.blackMana,
    onSecondary: AppColors.darkSouls,
    secondaryContainer: AppColors.kettleman,
    tertiaryContainer: AppColors.agedMoustacheGrey,
    onTertiary: AppColors.kinglyCloud,
    outline: AppColors.shadowedSteel,
    error: AppColors.silkenRuby,
  ),
  useMaterial3: true,
  dividerTheme: const DividerThemeData(
    color: AppColors.shadowedSteel,
  ),
);
