import 'package:flutter/material.dart';
import 'package:flutter_theme_handler/flutter_theme_handler.dart';
import 'package:flutter_theme_handler/src/widgets/bottom_navigation_bar_theme.dart';
import 'package:flutter_theme_handler/src/widgets/bottom_sheet_theme.dart';
import 'package:flutter_theme_handler/src/widgets/date_picker_theme.dart';
import 'package:flutter_theme_handler/src/widgets/dialog_theme.dart';
import 'package:flutter_theme_handler/src/widgets/divider_theme.dart';
import 'package:flutter_theme_handler/src/widgets/drawer_theme.dart';
import 'package:flutter_theme_handler/src/widgets/elevated_theme.dart';
import 'package:flutter_theme_handler/src/widgets/navigation_rail_theme.dart';
import 'package:flutter_theme_handler/src/widgets/outlined_button_theme.dart';
import 'package:flutter_theme_handler/src/widgets/progress_theme_indicator.dart';
import 'package:flutter_theme_handler/src/widgets/tab_bar_theme.dart';
import 'package:flutter_theme_handler/src/widgets/text_button_theme.dart';
import 'package:flutter_theme_handler/src/widgets/text_selection_theme.dart';

class ThemeController extends ValueNotifier<ThemeData> {
  final ColorScheme Function(bool isDark) colorSchemeProvider;
  final RadioThemeData? customRadioTheme;
  final SnackBarThemeData? customSnackBarTheme;
  final InputDecorationTheme? inputDecorationTheme;
  final ChipThemeData? chipTheme;
  final TabBarThemeData? tabBarThemeData;
  final DividerThemeData? dividerThemeData;
  final DatePickerThemeData? datePickerThemeData;
  final ElevatedButtonThemeData? elevatedButtonThemeData;
  final CheckboxThemeData? checkboxThemeData;
  final ProgressIndicatorThemeData? progressIndicatorThemeData;
  final OutlinedButtonThemeData? outlinedButtonThemeData;
  final TextSelectionThemeData? textSelectionThemeData;
  final NavigationRailThemeData? navigationRailThemeData;
  final DialogThemeData? dialogThemeData;
  final BottomSheetThemeData? bottomSheetThemeData;
  final DrawerThemeData? drawerThemeData;
  final double? multiplier;
  final bool useGoogleFonts;
  final String? arabicGoogleFont;
  final String? englishGoogleFont;
  final BottomNavigationBarThemeData? bottomNavigationBarThemeData;
  final TextButtonThemeData? textButtonThemeData;

  ThemeController({
    required this.colorSchemeProvider,
    bool isDarkMode = false,
    this.customRadioTheme,
    this.customSnackBarTheme,
    this.inputDecorationTheme,
    this.chipTheme,
    this.tabBarThemeData,
    this.dividerThemeData,
    this.datePickerThemeData,
    this.elevatedButtonThemeData,
    this.checkboxThemeData,
    this.progressIndicatorThemeData,
    this.outlinedButtonThemeData,
    this.textSelectionThemeData,
    this.navigationRailThemeData,
    this.dialogThemeData,
    this.bottomSheetThemeData,
    this.drawerThemeData,
    this.bottomNavigationBarThemeData,
    this.textButtonThemeData,
    this.useGoogleFonts = true,
    this.arabicGoogleFont,
    this.englishGoogleFont,
    this.multiplier = 1,
  }) : super(
          _createTheme(
            colorSchemeProvider(isDarkMode),
            null,
            customRadioTheme,
            customSnackBarTheme,
            inputDecorationTheme,
            chipTheme,
            tabBarThemeData,
            dividerThemeData,
            datePickerThemeData,
            elevatedButtonThemeData,
            checkboxThemeData,
            progressIndicatorThemeData,
            outlinedButtonThemeData,
            textSelectionThemeData,
            navigationRailThemeData,
            dialogThemeData,
            bottomSheetThemeData,
            drawerThemeData,
            bottomNavigationBarThemeData,
            textButtonThemeData,
            multiplier,
            useGoogleFonts,
            arabicGoogleFont,
            englishGoogleFont,
          ),
        );

  static ThemeData _createTheme(
    ColorScheme colorScheme,
    Locale? locale,
    RadioThemeData? radioTheme,
    SnackBarThemeData? snackBarTheme,
    InputDecorationTheme? inputDecorationTheme,
    ChipThemeData? chipTheme,
    TabBarThemeData? tabBarThemeData,
    DividerThemeData? dividerThemeData,
    DatePickerThemeData? datePickerThemeData,
    ElevatedButtonThemeData? elevatedButtonThemeData,
    CheckboxThemeData? checkboxThemeData,
    ProgressIndicatorThemeData? progressIndicatorThemeData,
    OutlinedButtonThemeData? outlinedButtonThemeData,
    TextSelectionThemeData? textSelectionThemeData,
    NavigationRailThemeData? navigationRailThemeData,
    DialogThemeData? dialogThemeData,
    BottomSheetThemeData? bottomSheetThemeData,
    DrawerThemeData? drawerThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarThemeData,
    TextButtonThemeData? textButtonThemeData,
    double? multiplier,
    bool useGoogleFonts,
    String? arabicGoogleFont,
    String? englishGoogleFont,
  ) {
    return ThemeData(
      scaffoldBackgroundColor: colorScheme.primary,
      primaryColor: colorScheme.primary,
      canvasColor: colorScheme.surfaceContainerHighest,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(color: colorScheme.primary),
      buttonTheme: ButtonThemeData(buttonColor: colorScheme.onPrimary),
      inputDecorationTheme: inputDecorationTheme ??
          getInputDecorationTheme(colorScheme, multiplier),
      textTheme: getTextTheme(
        locale ?? const Locale('en'),
        multiplier,
        useGoogleFonts: useGoogleFonts,
        arabicGoogleFont: arabicGoogleFont,
        englishGoogleFont: englishGoogleFont,
      ),
      radioTheme: radioTheme ?? getRadioTheme(colorScheme),
      snackBarTheme: snackBarTheme ?? getSnackBarTheme(colorScheme),
      chipTheme: chipTheme ?? getChipTheme(colorScheme),
      tabBarTheme: tabBarThemeData ?? getTabBarTheme(colorScheme),
      dividerTheme: dividerThemeData ?? dividerTheme(colorScheme),
      datePickerTheme: datePickerThemeData ?? getDatePickerTheme(colorScheme),
      elevatedButtonTheme: elevatedButtonThemeData ??
          getElevatedButtonTheme(colorScheme, multiplier),
      checkboxTheme: checkboxThemeData ?? getCheckboxTheme(colorScheme),
      progressIndicatorTheme:
          progressIndicatorThemeData ?? getProgressIndicatorTheme(colorScheme),
      outlinedButtonTheme:
          outlinedButtonThemeData ?? getOutlinedButtonTheme(colorScheme),
      textSelectionTheme:
          textSelectionThemeData ?? getTextSelectionTheme(colorScheme),
      navigationRailTheme:
          navigationRailThemeData ?? getNavigationRailTheme(colorScheme),
      dialogTheme: dialogThemeData ?? getDialogTheme(colorScheme),
      bottomSheetTheme:
          bottomSheetThemeData ?? getBottomSheetTheme(colorScheme),
      drawerTheme: drawerThemeData ?? getDrawerTheme(colorScheme),
      bottomNavigationBarTheme: bottomNavigationBarThemeData ??
          getBottomNavigationBarTheme(colorScheme),
      textButtonTheme: textButtonThemeData ?? getTextButtonTheme(colorScheme),
    );
  }

  // Update toggleTheme and updateThemeWithLocale methods to include new parameters
  void toggleTheme() {
    bool isDarkMode = value.brightness == Brightness.light;
    value = _createTheme(
      colorSchemeProvider(isDarkMode),
      null,
      customRadioTheme,
      customSnackBarTheme,
      inputDecorationTheme,
      chipTheme,
      tabBarThemeData,
      dividerThemeData,
      datePickerThemeData,
      elevatedButtonThemeData,
      checkboxThemeData,
      progressIndicatorThemeData,
      outlinedButtonThemeData,
      textSelectionThemeData,
      navigationRailThemeData,
      dialogThemeData,
      bottomSheetThemeData,
      drawerThemeData,
      bottomNavigationBarThemeData,
      textButtonThemeData,
      multiplier,
      useGoogleFonts,
      arabicGoogleFont,
      englishGoogleFont,
    );
  }

  void updateThemeWithLocale(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        bool isDarkMode = value.brightness == Brightness.light;
        Locale locale = Localizations.localeOf(context);
        value = _createTheme(
          colorSchemeProvider(isDarkMode),
          locale,
          customRadioTheme,
          customSnackBarTheme,
          inputDecorationTheme,
          chipTheme,
          tabBarThemeData,
          dividerThemeData,
          datePickerThemeData,
          elevatedButtonThemeData,
          checkboxThemeData,
          progressIndicatorThemeData,
          outlinedButtonThemeData,
          textSelectionThemeData,
          navigationRailThemeData,
          dialogThemeData,
          bottomSheetThemeData,
          drawerThemeData,
          bottomNavigationBarThemeData,
          textButtonThemeData,
          multiplier,
          useGoogleFonts,
          arabicGoogleFont,
          englishGoogleFont,
        );
      }
    });
  }
}
