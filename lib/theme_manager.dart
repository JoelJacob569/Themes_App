import 'package:flutter/material.dart';

enum AppThemeMode { system, light, dark }

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  AppThemeMode _appThemeMode = AppThemeMode.system;

  ThemeMode get themeMode => _themeMode;
  AppThemeMode get appThemeMode => _appThemeMode;

  void setTheme(AppThemeMode mode) {
    _appThemeMode = mode;
    switch (mode) {
      case AppThemeMode.system:
        _themeMode = ThemeMode.system;
        break;
      case AppThemeMode.light:
        _themeMode = ThemeMode.light;
        break;
      case AppThemeMode.dark:
        _themeMode = ThemeMode.dark;
        break;
    }
    notifyListeners();
  }
}
