import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecorationTheme getInputDecorationTheme(
    ColorScheme colorScheme, double? inputmultiplier) {
  double multiplier = inputmultiplier ?? 1;
  return InputDecorationTheme(
    isDense: true,
    contentPadding:
        const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 10),
    labelStyle: GoogleFonts.dmSans(
      fontSize: 14.0 * multiplier,
    ),
    hintStyle: GoogleFonts.dmSans(
      fontSize: 16 * multiplier,
      color: colorScheme.onSecondary,
      letterSpacing: 0.25,
    ),
    floatingLabelStyle: TextStyle(
      color: colorScheme.onSecondary,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onSecondary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onSecondary,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onSecondary,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onSecondary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.error,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.error,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    iconColor: colorScheme.onSecondary,
    focusColor: colorScheme.onSecondary,
    hoverColor: colorScheme.onSecondary,
    prefixIconColor: colorScheme.onSecondary,
    suffixIconColor: colorScheme.onSecondary,
    filled: true,
    fillColor: colorScheme.primary,
  );
}
