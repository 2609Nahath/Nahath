// Hamburger.dart
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Dashboard/FAQ/faq.dart';
import 'package:emp_management_system/Dashboard/Settings/settings.dart';
import 'package:flutter/material.dart';

class HamburgerButton {
  // Hamburger.dart
  static Drawer buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
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
                  child: Text('Dashboard', style: Fonts.google_fonts(context)),
                )),
          ),
          ListTile(
            title: Text('Settings', style: Fonts.bodyFonts(context)),
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
              style: Fonts.bodyFonts(context),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FAQ()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Log Out',
              style: Fonts.bodyFonts(context),
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
