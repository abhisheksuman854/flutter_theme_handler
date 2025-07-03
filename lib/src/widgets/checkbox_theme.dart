import 'package:flutter/material.dart';

CheckboxThemeData getCheckboxTheme(ColorScheme colorScheme) {
  return CheckboxThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    checkColor: WidgetStateProperty.all(
      colorScheme.primary,
    ),
    fillColor: WidgetStateColor.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? colorScheme.onPrimary
          : colorScheme.onPrimaryContainer,
    ),
    visualDensity: VisualDensity.compact,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        3.0,
      ),
    ),
  );
}
