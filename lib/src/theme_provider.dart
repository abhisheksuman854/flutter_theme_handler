import 'package:flutter/material.dart';
import 'theme_controller.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeController controller;

  const ThemeProvider({
    super.key,
    required this.controller,
    required super.child,
  });

  static ThemeController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ThemeProvider>()!
        .controller;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) => true;
}
