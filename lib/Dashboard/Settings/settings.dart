import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/Dashboard/drawer_button.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color backgroundColor = MainColors.mainColor;
  String selectedLanguage = 'English'; // Default language

  void _toggleDarkMode(bool value) {
    setState(() {
      backgroundColor =
          value ? Color.fromARGB(255, 117, 155, 152) : MainColors.mainColor;
    });
    // Implement logic to apply dark mode throughout the app
    // You may use a theme provider or set the theme globally
  }

  void _changeLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
    // Implement logic to change the language throughout the app
    // You may use a localization provider or set the locale globally
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar().appBar(context),
      backgroundColor: Colors.white,
      endDrawer: HamburgerButton.buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Settings',
                style: Fonts.google_fonts_bold_big(context),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Container(
                  color: backgroundColor,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ListTile(
                        title: Text(
                          'Change Language',
                          style: Fonts.bodyFonts(context),
                        ),
                        trailing: DropdownButton<String>(
                          value: selectedLanguage,
                          onChanged: (String? newValue) {
                            _changeLanguage(newValue!);
                          },
                          items: <String>[
                            'English',
                            'Spanish',
                            'French',
                            'German'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: Fonts.bodyFonts(context),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        'Dark Mode',
                        style: Fonts.bodyFonts(context),
                      ),
                      trailing: Switch(
                        value: backgroundColor ==
                            Color.fromARGB(255, 117, 155, 152),
                        onChanged: _toggleDarkMode,
                        activeColor: Colors.green,
                      ),
                    ),
                  ]),
                ),
              ),
            )
            // Add more settings as needed
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Settings(),
  ));
}
