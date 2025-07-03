import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme getTextTheme(
  Locale locale,
  double? inputMultiplier, {
  bool useGoogleFonts = true,
  String? arabicGoogleFont,
  String? englishGoogleFont,
}) {
  double multiplier = inputMultiplier ?? 1;
  final bool isArabic = locale.languageCode == 'ar';

  final baseFont = useGoogleFonts
      ? (isArabic
          ? (arabicGoogleFont != null
              ? GoogleFonts.getFont(arabicGoogleFont)
              : GoogleFonts.tajawal())
          : (englishGoogleFont != null
              ? GoogleFonts.getFont(englishGoogleFont)
              : GoogleFonts.dmSans()))
      : const TextStyle();

  return TextTheme(
    bodyLarge: baseFont.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
    bodyMedium: baseFont.copyWith(fontSize: 16),
    bodySmall: baseFont.copyWith(fontSize: 14),
    displayLarge:
        baseFont.copyWith(fontSize: 24 * multiplier, letterSpacing: 0.25),
    displayMedium:
        baseFont.copyWith(fontSize: 20 * multiplier, letterSpacing: 0.25),
    displaySmall:
        baseFont.copyWith(fontSize: 10 * multiplier, letterSpacing: 0.25),
    titleLarge:
        baseFont.copyWith(fontSize: 18 * multiplier, letterSpacing: 0.25),
    titleMedium:
        baseFont.copyWith(fontSize: 16 * multiplier, letterSpacing: 0.25),
    titleSmall:
        baseFont.copyWith(fontSize: 14 * multiplier, letterSpacing: 0.25),
    labelLarge: baseFont.copyWith(
      fontSize: 18 * multiplier,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
    ),
    labelMedium: baseFont.copyWith(
      fontSize: 16 * multiplier,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
    ),
    labelSmall: baseFont.copyWith(
      fontSize: 14 * multiplier,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
    ),
  );
}
