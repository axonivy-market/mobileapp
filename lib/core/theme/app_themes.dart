import 'package:axon_ivy/generated/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.tropicSea,
    primaryContainer: AppColors.placebo,
    onPrimaryContainer: AppColors.zhenZhuBaiPear,
    secondary: AppColors.blackMana,
    secondaryContainer: AppColors.kinglyCloud,
    tertiaryContainer: AppColors.skyBus,
    outline: AppColors.mercury,
    surface: AppColors.eerieBlack,
    onSurface: AppColors.white,
    onSurfaceVariant: AppColors.eerieBlack,
    error: AppColors.watermelonade,
  ),
  useMaterial3: true,
  dividerTheme: const DividerThemeData(
    color: AppColors.mercury,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      background: AppColors.shoeWax,
      primary: AppColors.drwhite,
      primaryContainer: AppColors.blackOak,
      onPrimaryContainer: AppColors.lacqueredLiquorice,
      secondary: AppColors.blackMana,
      secondaryContainer: AppColors.kettleman,
      tertiaryContainer: AppColors.agedMoustacheGrey,
      onTertiary: AppColors.kinglyCloud,
      outline: AppColors.shadowedSteel,
      surface: AppColors.white,
      onSurfaceVariant: AppColors.white,
      onSurface: AppColors.eerieBlack,
      error: AppColors.watermelonade),
  useMaterial3: true,
  dividerTheme: const DividerThemeData(
    color: AppColors.shadowedSteel,
  ),
);
