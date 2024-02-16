import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/drawer_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Add package for dark/light mode management (e.g., shared_preferences)
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDarkModeEnabled = false;
  String selectedLanguage = 'English'; // Default language

  void _toggleDarkMode(bool value) {
    setState(() {
      isDarkModeEnabled = value;
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
      appBar: HomeAppBar().appBar,
      backgroundColor: Colors.white,
      endDrawer: HamburgerButton.buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Change Language'),
              trailing: DropdownButton<String>(
                value: selectedLanguage,
                onChanged: (String? newValue) {
                  _changeLanguage(newValue!);
                },
                items: <String>['English', 'Spanish', 'French', 'German']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: isDarkModeEnabled,
                onChanged: (bool value) {
                  _toggleDarkMode(value);
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Common Setting 1'),
              // Add more common settings as needed
            ),
            Divider(),
            ListTile(
              title: Text('Common Setting 2'),
            ),
            // Add more settings as needed
          ],
        ),
      ),
    );
  }
}
