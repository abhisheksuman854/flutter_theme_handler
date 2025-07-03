import 'package:flutter/material.dart';

DividerThemeData dividerTheme(ColorScheme colorScheme) {
  return DividerThemeData(
    space: 0,
    indent: 1,
    endIndent: 1,
    thickness: 1.5,
    color: colorScheme.onSecondary,
  );
}
