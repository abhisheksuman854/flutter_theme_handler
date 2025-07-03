import 'package:flutter/material.dart';

ChipThemeData getChipTheme(ColorScheme colorScheme) {
  return ChipThemeData(
    backgroundColor: colorScheme.onPrimary,
    labelPadding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
    labelStyle: const TextStyle(fontSize: 14, letterSpacing: 0.25, height: 1.1),
    padding: EdgeInsetsDirectional.zero,
    side: BorderSide.none,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}
