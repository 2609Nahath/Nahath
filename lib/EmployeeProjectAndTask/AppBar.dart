import 'package:emp_management_system/Themes/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar {
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:
            CrossAxisAlignment.center, // Center the row vertically
        children: [
          Center(
            child: Text(
              'PrayagEdu',
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                shadows: <Shadow>[
                  const Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 4.0,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => {}, // Add your onPressed logic
              icon: const Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(
        color: Theme.of(context).colorScheme.secondary,
      ),
      centerTitle: false, // Set to false to allow manual centering
      elevation: 0,
    );
  }
}
