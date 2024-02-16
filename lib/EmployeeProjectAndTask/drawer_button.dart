// Hamburger.dart
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/settings.dart';
import 'package:flutter/material.dart';

class HamburgerButton {
  // Hamburger.dart
  static Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 189, 178),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Dashboard', style: Fonts.google_fonts),
                )),
          ),
          ListTile(
            title: Text('Settings', style: Fonts.bodyFonts),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          ListTile(
            title: Text(
              'FAQ',
              style: Fonts.bodyFonts,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Log Out',
              style: Fonts.bodyFonts,
            ),
            onTap: () {
              // ...
            },
          )
        ],
      ),
    );
  }
}
