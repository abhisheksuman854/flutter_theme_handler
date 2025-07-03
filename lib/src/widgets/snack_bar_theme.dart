import 'package:flutter/material.dart';

SnackBarThemeData getSnackBarTheme(ColorScheme colorScheme) {
  return SnackBarThemeData(
    backgroundColor: colorScheme.onPrimary,
    contentTextStyle: const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    behavior: SnackBarBehavior.floating,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          8.0,
        ),
      ),
    ),
  );
}
