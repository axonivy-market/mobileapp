import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.tropicSea,
    tertiaryContainer: AppColors.skyBus,
    background: AppColors.white,
    primaryContainer: AppColors.bleachedSilk,
    outline: AppColors.mercury,
      secondary: AppColors.blackMana,
      surface: AppColors.eerieBlack,
      onSurface: AppColors.white,
      onSurfaceVariant: AppColors.eerieBlack,
      onPrimaryContainer: AppColors.zhenZhuBaiPear,
      error: AppColors.watermelonade
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.bleachedSilk)),
  
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: AppColors.shoeWax,
    primary: AppColors.drwhite,
    tertiaryContainer: AppColors.agedMoustacheGrey,
    onTertiary: AppColors.kinglyCloud,
    primaryContainer: AppColors.kettleman,
    outline: AppColors.shadowedSteel,
      secondary: AppColors.blackMana,
      surface: AppColors.white,
      onSurfaceVariant: AppColors.white,
      onSurface: AppColors.eerieBlack,
      onPrimaryContainer: AppColors.lacqueredLiquorice,
      error: AppColors.watermelonade

  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.kettleman)),
  
  useMaterial3: true,
);
