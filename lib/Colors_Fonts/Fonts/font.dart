import 'package:emp_management_system/Themes/dark_theme.dart';
import 'package:emp_management_system/Themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static TextStyle google_fonts_bold_big(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500, color: theme);
  }

  // ignore: non_constant_identifier_names
  static TextStyle google_fonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle google_fonts_small(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 17, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle google_fonts_small_white(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;

    return GoogleFonts.poppins(
        fontSize: 17, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle bodyFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle boldFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w500, color: theme);
  }

  static TextStyle smallFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle hintFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w400, color: theme);
  }

  static TextStyle headFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w500, color: theme);
  }

  static TextStyle memberRoleFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w500, color: theme);
  }

  static TextStyle memberNameFonts(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary;
    return GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w500, color: theme);
  }

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// shadows: <Shadow>[
//       Shadow(
//         offset: Offset(10.0, 10.0),
//         blurRadius: 3.0,
//         color: Color.fromARGB(255, 0, 0, 0),
//       ),
//       Shadow(
//         offset: Offset(10.0, 10.0),
//         blurRadius: 8.0,
//         color: Color.fromARGB(125, 0, 0, 255),
//       ),