import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar{
  AppBar appBar = AppBar(
    backgroundColor: Colors.white,
          title: Text(
            'PrayagEdu',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              shadows: <Shadow>[
                const Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 4.0,
                  color: Colors.grey,
                )
              ]
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
  );
}