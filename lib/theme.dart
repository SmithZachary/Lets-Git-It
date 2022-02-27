import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'colors.dart';

ThemeData light = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.lightBackground,
  colorScheme:
      ThemeData.light().colorScheme.copyWith(secondary: AppColors.primary),
  appBarTheme: ThemeData.light().appBarTheme.copyWith(
        iconTheme: ThemeData.light().iconTheme,
        backgroundColor: AppColors.shade,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: AppColors.iconLight,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: AppColors.primary),
  ),
  cardColor: AppColors.shade,
  primaryTextTheme: const TextTheme(
    headline6: TextStyle(color: AppColors.textLight),
  ),
  iconTheme: const IconThemeData(color: AppColors.textLight),
);

ThemeData midnight = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.lightBackground,
  colorScheme:
      ThemeData.fallback().colorScheme.copyWith(secondary: AppColors.primary),
  appBarTheme: ThemeData.fallback().appBarTheme.copyWith(
        iconTheme: ThemeData.fallback().iconTheme,
        backgroundColor: AppColors.shade,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: AppColors.iconLight,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: AppColors.primary),
  ),
  cardColor: AppColors.shade,
  primaryTextTheme: const TextTheme(
    headline6: TextStyle(color: AppColors.textLight),
  ),
  iconTheme: const IconThemeData(color: AppColors.textLight),
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,
  accentColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  colorScheme:
      ThemeData.dark().colorScheme.copyWith(secondary: AppColors.primary),
  backgroundColor: AppColors.darkBackground,
  appBarTheme: ThemeData.dark().appBarTheme.copyWith(
        backgroundColor: AppColors.onDarkBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: AppColors.primary),
  ),
  cardColor: AppColors.onDarkBackground,
  primaryTextTheme: const TextTheme(
    headline6: TextStyle(color: AppColors.textDark),
  ),
  iconTheme: const IconThemeData(color: AppColors.iconDark),
);

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  // late SharedPreferences _prefs;
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    // if (_prefs == null) _prefs = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    // _darkTheme = _prefs.getBool(key) ?? true;
    notifyListeners();
  }

  _saveToPrefs() async {
    await _initPrefs();
    // _prefs.setBool(key, _darkTheme);
  }
}
