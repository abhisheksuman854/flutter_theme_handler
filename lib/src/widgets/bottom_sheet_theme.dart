import 'package:flutter/material.dart';

BottomSheetThemeData getBottomSheetTheme(ColorScheme colorScheme) {
  return BottomSheetThemeData(
    backgroundColor: colorScheme.primary,
    surfaceTintColor: colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
  );
}
