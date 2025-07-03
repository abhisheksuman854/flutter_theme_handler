import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

OutlinedButtonThemeData getOutlinedButtonTheme(ColorScheme colorScheme) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      side: BorderSide(color: colorScheme.onPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.dmSans(
        fontSize: 15,
        color: colorScheme.primary,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      elevation: 0,
      minimumSize: const Size(120, 45),
    ),
  );
}
