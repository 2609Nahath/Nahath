import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static TextStyle google_fonts_bold_big = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black);
  // ignore: non_constant_identifier_names
  static TextStyle google_fonts = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle google_fonts_small = GoogleFonts.poppins(
      fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle google_fonts_small_white = GoogleFonts.poppins(
      fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white);

  static TextStyle bodyFonts = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle boldFonts = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle smallFonts = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle hintFonts = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey);

  static TextStyle headFonts = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle memberRoleFonts = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle memberNameFonts = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);

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