import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

NavigationRailThemeData getNavigationRailTheme(ColorScheme colorScheme) {
  return NavigationRailThemeData(
    elevation: 2,
    backgroundColor: colorScheme.primary,
    indicatorColor: colorScheme.onPrimary,
    // useIndicator: true,
    labelType: NavigationRailLabelType.all,
    selectedLabelTextStyle: GoogleFonts.dmSans(
      fontSize: 18,
      color: colorScheme.onPrimary,
    ),
    unselectedLabelTextStyle: GoogleFonts.dmSans(
      fontSize: 18,
      color: colorScheme.onSurface,
    ),
    selectedIconTheme: IconThemeData(color: colorScheme.onPrimary),
    unselectedIconTheme: IconThemeData(color: colorScheme.onSurface),
  );
}
