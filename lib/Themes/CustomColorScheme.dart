import 'package:flutter/material.dart';

class CustomColorScheme extends ColorScheme {
  const CustomColorScheme(
      {required super.brightness,
      required super.primary,
      required super.onPrimary,
      required super.secondary,
      required super.onSecondary,
      required super.onError,
      required super.background,
      required super.onBackground,
      required super.surface,
      required super.onSurface,
      required bool isDark,
      required Color tertiary,
      required Color onTertiary,
      required super.error});
}

class MyThemes {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: CustomColorScheme(
      isDark: true,
      primary: Colors.grey[900]!,
      secondary: Colors.grey[900]!,
      tertiary: Colors.white, // Define your tertiary color here
      background: Colors.grey[900]!,
      surface: Colors.grey[900]!,
      onBackground: Colors.white,
      onSurface: Colors.white,
      onError: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.black, brightness: Brightness.dark,
      error: Colors.red, // Define your onTertiary color here
    ),
  );
}
