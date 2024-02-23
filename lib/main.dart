import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/HomeProjectTask.dart';
import 'package:emp_management_system/Themes/dark_theme.dart';
import 'package:emp_management_system/Themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().lightTheme,
      darkTheme: DarkTheme().darkTheme,
      home: HomeProjectTask(),
    );
  }
}
