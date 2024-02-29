import "package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart";
import "package:flutter/material.dart";

class LightTheme {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Colors.white,
        primary: Colors.grey[900]!,
        secondary: Colors.black,
        tertiary: Colors.white,
        onPrimary: MainColors.firstColor,
        onSecondary: MainColors.mainColor,
        onErrorContainer: MainColors.offWhiteWithOpacity,
        outlineVariant: MainColors.button,
        onTertiaryContainer: MainColors.offWhiteWithOpacity
        // tertiary: Colors.grey[900]!, // Define your tertiary color here
        // surface: Colors.grey[600]!,
        // onBackground: Colors.white,
        // onSurface: Colors.white,
        // onError: Colors.red,
        // onPrimary: Colors.white,
        // onSecondary: Colors.white,
        // onTertiary: Colors.black, brightness: Brightness.dark,
        // error: Colors.red, // Define your onTertiary color here
        ),
  );
}
