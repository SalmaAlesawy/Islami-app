import 'package:flutter/material.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
      primaryColor: AppColors.primaryColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFE2BE7F),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            fontFamily: "Janna"),
      ),
      textTheme: const TextTheme(
          headlineMedium:TextStyle(
            fontFamily: "Janna",
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: AppColors.white
          ),
          headlineSmall: TextStyle(
              fontFamily: "Janna",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
          bodyLarge: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
          titleLarge: TextStyle(
              fontFamily: "Janna",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
          bodyMedium: TextStyle(
              fontFamily: "Janna",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
          headlineMedium: TextStyle(
              fontFamily: "Janna",
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: AppColors.white
        )

      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: "janna",
              fontSize: 20,
              fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: AppColors.primaryColor),
          foregroundColor: AppColors.primaryColor));
}
