import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  Color _backgroundColor = MainColors.mainColor;

  Color get backgroundColor => _backgroundColor;

  void toggleDarkMode(bool value) {
    _backgroundColor =
        value ? Color.fromARGB(255, 117, 155, 152) : MainColors.mainColor;
    notifyListeners();
  }
}
