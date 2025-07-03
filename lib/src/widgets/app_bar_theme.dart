import 'package:flutter/material.dart';

AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    backgroundColor: colorScheme.primary,
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
  );
}
