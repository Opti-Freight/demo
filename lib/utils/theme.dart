import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optifreight/utils/utils.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  chipTheme: const ChipThemeData(
    labelStyle: TextStyle(
      color: AppColors.darkGrey,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    backgroundColor: AppColors.grey,
    disabledColor: AppColors.black,
    selectedColor: AppColors.primary,
  ),
  cardTheme: CardTheme(
    color: AppColors.white,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  ),
  useMaterial3: true,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.black,
    ),
  ),
  textTheme: GoogleFonts.kanitTextTheme().copyWith(
    displayLarge: const TextStyle(
      fontSize: 30,
      color: AppColors.primary,
      fontWeight: FontWeight.w900,
    ),
    displayMedium: const TextStyle(
      fontSize: 25,
      color: AppColors.primary,
      fontWeight: FontWeight.w900,
    ),
    titleLarge: const TextStyle(
      color: AppColors.black,
    ),
    titleMedium: const TextStyle(
      color: AppColors.black,
    ),
    titleSmall: const TextStyle(
      color: AppColors.black,
    ),
    labelLarge: const TextStyle(
      color: AppColors.black,
    ),
    labelMedium: const TextStyle(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: const TextStyle(
      color: AppColors.black,
    ),
    bodyLarge: const TextStyle(
      color: AppColors.black,
    ),
    bodyMedium: const TextStyle(
      color: AppColors.black,
    ),
    bodySmall: const TextStyle(
      color: AppColors.black,
    ),
  ),
);
