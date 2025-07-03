import 'package:flutter/material.dart';
import 'colors.dart';

class ThemeConfig {
  static ColorScheme defaultColorScheme(bool isDarkTheme) {
    return isDarkTheme
        ? const ColorScheme.dark(
            primary: DefaultColors.primaryDark,
            onPrimary: DefaultColors.onPrimaryDark,
            primaryContainer: DefaultColors.primaryContainerDark,
            onPrimaryContainer: DefaultColors.onPrimaryContainerDark,
            secondary: DefaultColors.secondaryDark,
            onSecondary: DefaultColors.primary,
            secondaryContainer: DefaultColors.secondaryDark,
            surface: DefaultColors.surfaceDark,
            onSurface: DefaultColors.onSurfaceDark,
            inverseSurface: DefaultColors.inverseSurfaceDark,
            error: DefaultColors.error,
            onError: DefaultColors.primary,
          )
        : const ColorScheme.light(
            primary: DefaultColors.primary,
            onPrimary: DefaultColors.onPrimary,
            primaryContainer: DefaultColors.primaryContainer,
            onPrimaryContainer: DefaultColors.onPrimaryContainer,
            secondary: DefaultColors.secondary,
            onSecondary: DefaultColors.black,
            secondaryContainer: DefaultColors.secondary,
            surface: DefaultColors.surface,
            onSurface: DefaultColors.onSurface,
            inverseSurface: DefaultColors.inverseSurface,
            error: DefaultColors.error,
            onError: DefaultColors.primary,
          );
  }
}
