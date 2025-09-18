import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  iconTheme: const IconThemeData(color: Colors.black),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black87),
    labelLarge: TextStyle(fontSize: 14, color: Colors.blue),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.blue),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue,
      side: const BorderSide(color: Colors.blue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.blue),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected) ? Colors.blue : Colors.grey;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected) ? Colors.blue : Colors.grey,
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? Colors.blue.withValues(alpha: 0.5)
          : Colors.grey.withValues(alpha: 0.3),
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected) ? Colors.blue : Colors.grey,
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.blue,
    inactiveTrackColor: Colors.grey[300],
    thumbColor: Colors.blue,
    overlayColor: Colors.blue.withValues(alpha: 0.2),
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 4,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.deepPurple,
  scaffoldBackgroundColor: const Color(0xFF121212),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1F1F1F),
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
    labelLarge: TextStyle(fontSize: 14, color: Colors.deepPurpleAccent),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF1F1F1F),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.deepPurple),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepPurpleAccent),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.deepPurpleAccent,
      side: const BorderSide(color: Colors.deepPurpleAccent),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.deepPurpleAccent),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? Colors.deepPurple
          : Colors.grey;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? Colors.deepPurple
          : Colors.grey,
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? Colors.deepPurple.withValues(alpha: 0.5)
          : Colors.grey.withValues(alpha: 0.3),
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? Colors.deepPurpleAccent
          : Colors.grey,
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.deepPurple,
    inactiveTrackColor: Colors.white24,
    thumbColor: Colors.deepPurpleAccent,
    overlayColor: Colors.deepPurple.withValues(alpha: 0.2),
  ),
  cardTheme: CardThemeData(
    color: const Color(0xFF1F1F1F),
    elevation: 4,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);
