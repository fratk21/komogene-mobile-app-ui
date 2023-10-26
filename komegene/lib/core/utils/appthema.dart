import 'package:flutter/material.dart';
import 'package:komegene/core/utils/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.accentColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      color: AppColors.primaryColor,
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white, // App bar başlığı rengi
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white, // App bar başlığı rengi
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ).titleLarge,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 16.0,
      ),
      // Diğer metin stilleri
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
