import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/drawer_button.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar().appBar,
      endDrawer: HamburgerButton.buildDrawer(context),
      backgroundColor: Colors.white,
    );
  }
}
