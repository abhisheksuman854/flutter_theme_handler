import 'package:flutter/material.dart';

DatePickerThemeData getDatePickerTheme(ColorScheme colorScheme) {
  return DatePickerThemeData(
    dayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.onPrimary;
      } else if (states.contains(WidgetState.disabled)) {
        return colorScheme.onPrimary.withValues(alpha: 0.4);
      } else {
        return colorScheme.onPrimaryContainer;
      }
    }),
    rangeSelectionBackgroundColor: colorScheme.onPrimary,
    surfaceTintColor: colorScheme.onPrimary,
  );
}
