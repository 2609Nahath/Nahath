import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:flutter/material.dart';
import 'project_task_button.dart';
import '../Dashboard/drawer_button.dart';

class HomeProjectTask extends StatefulWidget {
  const HomeProjectTask({Key? key}) : super(key: key);

  @override
  State<HomeProjectTask> createState() => _HomeProjectTaskState();
}

class _HomeProjectTaskState extends State<HomeProjectTask> {
  //declaring object for HomeAppBar class
  HomeAppBar homeAppBar = HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: HamburgerButton.buildDrawer(context),
      appBar: HomeAppBar().appBar(context),
      body: const ProjectTask(),
    );
  }
}
