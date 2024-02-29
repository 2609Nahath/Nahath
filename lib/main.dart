import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/HomeProjectTask.dart';
import 'package:emp_management_system/Themes/dark_theme.dart';
import 'package:emp_management_system/Themes/light_theme.dart';
import 'package:emp_management_system/Themes/notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.isDarkMode
          ? DarkTheme().darkTheme
          : LightTheme().lightTheme,
      darkTheme: themeNotifier.isDarkMode
          ? LightTheme().lightTheme
          : DarkTheme().darkTheme,
      home: const HomeProjectTask(),
    );
  }
}
