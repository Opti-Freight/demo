import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optifreight/utils/utils.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
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
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
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

ThemeData webTheme = ThemeData(
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
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  ),
  listTileTheme: const ListTileThemeData(
    horizontalTitleGap: 30,
    tileColor: Colors.transparent,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    selectedColor: AppColors.primary,
    selectedTileColor: AppColors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
  ),
  useMaterial3: true,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.darkGrey,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.transparent,
      fontSize: 20,
      fontWeight: FontWeight.w300,
    ),
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.primary,
    ),
  ),
  textTheme: GoogleFonts.kanitTextTheme().copyWith(
    displayLarge: const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w900,
    ),
    displayMedium: const TextStyle(
        color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 40),
    displaySmall: const TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w900,
      fontSize: 30,
    ),
    headlineLarge: const TextStyle(
      color: AppColors.grey,
    ),
    headlineMedium: const TextStyle(
      color: AppColors.grey,
    ),
    titleLarge: const TextStyle(color: AppColors.black),
    titleMedium: const TextStyle(color: AppColors.black),
    titleSmall: const TextStyle(color: AppColors.black),
    labelMedium: const TextStyle(
      color: AppColors.black,
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: const TextStyle(
      color: AppColors.black,
      fontSize: 15,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: const TextStyle(color: AppColors.black),
    bodySmall: const TextStyle(color: AppColors.black),
  ),
);
