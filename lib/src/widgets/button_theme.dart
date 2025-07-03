import 'package:flutter/material.dart';

ButtonThemeData getButtonTheme(ColorScheme colorScheme) {
  return ButtonThemeData(
    buttonColor: colorScheme.primary,
    textTheme: ButtonTextTheme.primary,
  );
}
