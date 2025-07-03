import 'package:flutter/material.dart';

ProgressIndicatorThemeData getProgressIndicatorTheme(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.onPrimary,
  );
}
