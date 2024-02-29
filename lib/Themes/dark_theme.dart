import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';
import 'package:emp_management_system/Themes/CustomColorScheme.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
        background: Colors.grey[900]!,
        primary: Colors.grey[900]!,
        secondary: Colors.white,
        tertiary: Colors.grey[900]!, // Define your tertiary color here
        surface: Colors.grey[600]!,
        onBackground: MainColors.ContainerMainColor,
        onSurface: Colors.white,
        onError: Colors.red,
        onPrimary: MainColors.firstColor,
        onSecondary: MainColors.secondColor,
        onTertiary: Colors.black,
        brightness: Brightness.dark,
        error: Colors.red, // Define your onTertiary color here
        onErrorContainer: MainColors.offWhiteWithOpacity2,
        onTertiaryContainer: MainColors.secondColor),
  );
}
