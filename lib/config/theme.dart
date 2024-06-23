import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';

ThemeData theme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.bgColor,
    fontFamily: GoogleFonts.forum().fontFamily,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      headlineMedium: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      headlineSmall: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
      titleMedium: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
      titleSmall: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
    ),
  );
}
