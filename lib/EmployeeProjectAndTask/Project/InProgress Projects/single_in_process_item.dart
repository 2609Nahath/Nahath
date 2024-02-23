import 'package:emp_management_system/Dashboard/drawer_button.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/show_material.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/show_meetings.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/InProgress%20Projects/show_project_task_in_progress.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/TeamMembers/team_member.dart';

class SingleInProcessItem extends StatefulWidget {
  final String title;
  final String description;

  const SingleInProcessItem(this.title, this.description, {Key? key})
      : super(key: key);

  @override
  State<SingleInProcessItem> createState() => _SingleInProcessItemState();
}

class _SingleInProcessItemState extends State<SingleInProcessItem> {
  var projectTaskArr = [
    'Make the admin dashboard',
    'Make the list of Team Members',
    'Task 3',
    'Task 4'
  ];
  var dueDateArray = [
    '19/02/2024',
    '15/04/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024'
  ];
  var teamMembers = [
    'Nahath Blah',
    'Sahil Subba',
    'Marlyne Songthiang',
    'Dapbiang Jalong',
    'Spero Suchiang'
  ];
  var roleOfMember = [
    'Frontend/Backend Dev.',
    'Frontend/Backend Dev.',
    'Frontend/Backend Dev.',
    'Frontend/Backend Dev.',
    'Frontend/Backend Dev.'
  ];
  bool _showProjectBody = true;
  ShowProjectTask_InProcess showProjectTask = ShowProjectTask_InProcess();
  ShowMaterial showMaterials = ShowMaterial();
  ShowMeetings showMeetings = ShowMeetings();
  bool _showMeetingBody = false;
  bool _showMaterialBody = false;

  HomeAppBar homeAppBar = HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar().appBar(context),
      endDrawer: HamburgerButton.buildDrawer(context),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 10, 15),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(widget.title,
                            style: Fonts.google_fonts(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Due date: ${widget.description}",
                            style: Fonts.smallFonts(context)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(25)),
                      child: Container(
                        color: const Color.fromARGB(255, 1, 189, 178),
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildElevatedButton(
                                    "Tasks",
                                    () => _toggleBody(true, false, false),
                                    _showProjectBody),
                                buildElevatedButton(
                                    "Meetings",
                                    () => _toggleBody(false, true, false),
                                    _showMeetingBody),
                                buildElevatedButton(
                                    "Materials",
                                    () => _toggleBody(false, false, true),
                                    _showMaterialBody),
                              ],
                            ),
                            Column(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(bottom: 20)),
                                if (_showProjectBody)
                                  showProjectTask.buildShowProjectTask(context),
                                if (_showMeetingBody)
                                  showMeetings.buildShowMeetings(context),
                                if (_showMaterialBody)
                                  showMaterials.buildShowMaterial(context),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 20, 0, 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Team Members",
                            style: Fonts.google_fonts(context)),
                      ),
                    ),
                    GridView.count(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      shrinkWrap: true,
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: List.generate(
                        teamMembers.length,
                        (position) => TeamMember(
                          tileColor: tileColour.dueDateBgColor[
                              position % tileColour.dueDateBgColor.length],
                          nameOfMember: teamMembers[position],
                          roleOfMember: roleOfMember[position],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButton(
      String text, VoidCallback onPressed, bool isActive) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive
            ? MainColors.firstColor
            : MainColors.offWhite, // Change to your desired color
      ),
      onPressed: onPressed,
      child: Container(
        width: 80,
        child: Text(
          text,
          style: isActive
              ? Fonts.google_fonts_small_white(context)
              : Fonts.google_fonts_small(context),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _toggleBody(
      bool showTaskBody, bool showMeetingBody, bool showMaterialBody) {
    setState(() {
      _showProjectBody = showTaskBody;
      _showMeetingBody = showMeetingBody;
      _showMaterialBody = showMaterialBody;

      // Reset other flags when one screen is shown
      if (_showProjectBody) {
        _showMeetingBody = false;
        _showMaterialBody = false;
      } else if (_showMeetingBody) {
        _showProjectBody = false;
        _showMaterialBody = false;
      } else if (_showMaterialBody) {
        _showProjectBody = false;
        _showMeetingBody = false;
      }
    });
  }
}
