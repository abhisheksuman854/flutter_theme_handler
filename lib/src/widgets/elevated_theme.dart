import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButtonThemeData getElevatedButtonTheme(
    ColorScheme colorScheme, double? inputMultiplier) {
  double multiplier = inputMultiplier ?? 1;
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.onPrimary,
      foregroundColor: colorScheme.primary, // Ensures text is visible
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: GoogleFonts.dmSans(
        fontSize: 13 * multiplier,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0.5,
      minimumSize: Size(120, 40 * multiplier),
    ),
  );
}
