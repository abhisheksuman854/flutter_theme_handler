import 'package:flutter/material.dart';

RadioThemeData getRadioTheme(ColorScheme colorScheme) {
  return RadioThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor: WidgetStateProperty.all(
      colorScheme.onPrimary,
    ),
    visualDensity: VisualDensity.compact,
  );
}
