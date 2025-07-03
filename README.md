# Flutter Theme Handler 🎨

A lightweight and flexible theme management package for Flutter projects.

### ✨ Features:
- 🌗 Supports Light & Dark Mode
- 🎨 Customizable themes (Chip, Radio, Input, Snackbar)
- 🌍 Locale-aware text styles

### 🔥 Usage

```dart
class App extends StatelessWidget {
  final themeController = ThemeController(
    colorSchemeProvider: (isDark) => NZColors.getAppColorScheme(isDark),
  );

  App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return ThemeProvider(
      controller: themeController,
      child: AnimatedBuilder(
        animation: themeController,
        builder: (context, _) {
          themeController.updateThemeWithLocale(context);
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
            locale: context.locale,
            title: locator<Config>().appName,
            theme: themeController.value,
            routerDelegate: AutoRouterDelegate(router),
            routeInformationParser: router.defaultRouteParser(),
          );
        },
      ),
    );
  }
}


... Toggle event for theme change ...

ThemeProvider.of(context).toggleTheme();


