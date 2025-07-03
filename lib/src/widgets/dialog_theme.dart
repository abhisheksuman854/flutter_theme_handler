import 'package:flutter/material.dart';

DialogThemeData getDialogTheme(ColorScheme colorScheme) {
  return DialogThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    backgroundColor: colorScheme.primary,
    elevation: 2,
  );
}
