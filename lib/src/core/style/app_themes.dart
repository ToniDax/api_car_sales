import 'dart:ui';
import 'package:api_car_hometask/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'color_schema.dart';

@immutable
final class AppThemes{
  final ThemeMode mode;
  final ThemeData darkTheme;
  final ThemeData lightTheme;

  AppThemes ({required this.mode})
  :darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: AppColors.darkOrqaFonRangi,
    textTheme: const AppTextStyle(),
  ),

  lightTheme=ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: AppColors.darkOrqaFonRangi,
    textTheme: const AppTextStyle(),
  );

  static ThemeData light() => ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: AppColors.lightOrqaFonRangi,
  );

  static ThemeData dark() =>ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: AppColors.darkOrqaFonRangi,
  );

  ThemeData computeTheme(){

    switch (mode){

      case ThemeMode.light:
        return lightTheme;
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.system:
        return PlatformDispatcher.instance.platformBrightness == Brightness.dark? darkTheme : lightTheme;
    }
  }

}