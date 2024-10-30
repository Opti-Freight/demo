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
    displayLarge: TextStyle(
      fontSize: 55,
      color: AppColors.white,
      fontWeight: FontWeight.w900,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    displayMedium: TextStyle(
      fontSize: 25,
      color: AppColors.primary,
      fontWeight: FontWeight.w900,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    titleLarge: TextStyle(
      color: AppColors.black,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    titleMedium: TextStyle(
      color: AppColors.black,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    titleSmall: TextStyle(
      color: AppColors.black,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    labelLarge: TextStyle(
      color: AppColors.black,
      fontFamily: GoogleFonts.kanit().fontFamily,
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.kanit().fontFamily,
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.kanit().fontFamily,
      color: AppColors.black,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.kanit().fontFamily,
      color: AppColors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.kanit().fontFamily,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.kanit().fontFamily,
      color: AppColors.black,
    ),
  ),
);
