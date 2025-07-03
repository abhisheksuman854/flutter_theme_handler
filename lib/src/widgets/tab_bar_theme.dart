import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TabBarThemeData getTabBarTheme(ColorScheme colorScheme) {
  return TabBarThemeData(
    labelColor: colorScheme.onPrimary,
    unselectedLabelColor: colorScheme.onSurfaceVariant,
    indicatorColor: colorScheme.onPrimary,
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: GoogleFonts.dmSans(
      // Style for the selected tab text
      fontWeight: FontWeight.bold,
      fontSize: 13,
    ),
    unselectedLabelStyle: GoogleFonts.dmSans(
      // Style for the unselected tab text
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurfaceVariant,
    ),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: 4.0, // Thickness of the underline indicator
        color: colorScheme.onPrimary,
      ),
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
      insets: const EdgeInsets.fromLTRB(0, 0.0, 0, 70.0),
    ),
  );
}
