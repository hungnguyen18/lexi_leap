import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: _lightTextTheme(),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      iconTheme: IconThemeData(color: AppColors.textOnPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        borderSide: BorderSide.none,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.surfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColorDark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: _darkTextTheme(),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColorDark,
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColorDark,
      iconTheme: IconThemeData(color: AppColors.textOnPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        borderSide: BorderSide.none,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.surfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
      ),
    ),
  );

  static TextTheme _lightTextTheme() {
    return const TextTheme(
      headlineLarge: TextStyle(
          fontSize: AppSizes.fontSizeLarge,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary),
      headlineMedium: TextStyle(
          fontSize: AppSizes.fontSizeMedium,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary),
      bodyMedium: TextStyle(
          fontSize: AppSizes.fontSizeMedium, color: AppColors.textSecondary),
      bodySmall: TextStyle(
          fontSize: AppSizes.fontSizeSmall, color: AppColors.textSecondary),
    );
  }

  static TextTheme _darkTextTheme() {
    return const TextTheme(
      headlineLarge: TextStyle(
          fontSize: AppSizes.fontSizeLarge,
          fontWeight: FontWeight.bold,
          color: AppColors.textOnSurface),
      headlineMedium: TextStyle(
          fontSize: AppSizes.fontSizeMedium,
          fontWeight: FontWeight.bold,
          color: AppColors.textOnSurface),
      bodyMedium: TextStyle(
          fontSize: AppSizes.fontSizeMedium, color: AppColors.textOnSurface),
      bodySmall: TextStyle(
          fontSize: AppSizes.fontSizeSmall, color: AppColors.textOnSurface),
    );
  }
}
