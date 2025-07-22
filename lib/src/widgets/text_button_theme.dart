import 'package:flutter/material.dart';

TextButtonThemeData getTextButtonTheme(
    ColorScheme colorScheme) {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: colorScheme.onPrimary,
      backgroundColor: colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    ),
  );
}