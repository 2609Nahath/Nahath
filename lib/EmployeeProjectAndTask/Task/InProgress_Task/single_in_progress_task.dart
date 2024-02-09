import 'package:emp_management_system/EmployeeProjectAndTask/drawer_button.dart';
import 'package:emp_management_system/Strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/show_material.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/show_meetings.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/InProgress%20Projects/show_project_task_in_progress.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/TeamMembers/team_member.dart';

class SingleInProcessTask_Item extends StatefulWidget {
  final String title;
  final String description;

  const SingleInProcessTask_Item(this.title, this.description, {Key? key})
      : super(key: key);

  @override
  State<SingleInProcessTask_Item> createState() =>
      _SingleInProcessTask_ItemState();
}

class _SingleInProcessTask_ItemState extends State<SingleInProcessTask_Item> {
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
    StringWords stringWords = StringWords();
    return Scaffold(
      appBar: homeAppBar.appBar,
      endDrawer: HamburgerButton.buildDrawer(),
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
                        child: Text(widget.title, style: Fonts.google_fonts),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Due date: ${widget.description}",
                            style: Fonts.smallFonts),
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                color: MainColors.offWhiteWithOpacity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 20, left: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "About the project",
                                            style: Fonts.google_fonts_bold_big,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            stringWords.taskDesc,
                                            style: Fonts.bodyFonts,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 30),
                                        child: Divider(
                                          color: Colors.black,
                                          thickness:
                                              .8, // Adjust the thickness as needed
                                          indent:
                                              1.0, // Adjust the left indent as needed
                                          endIndent:
                                              1.0, // Adjust the right indent as needed
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 30),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Progress Tracker",
                                            style: Fonts.google_fonts_bold_big,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              color: MainColors.firstColor,
                                              child: IconButton(
                                                onPressed: () => {},
                                                icon: Icon(
                                                  Icons.add_rounded,                                                
                                                  color: MainColors.offWhite,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50, bottom: 20),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  color: MainColors.offWhite,
                                                  child: TextField(
                                                    maxLines: 6,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Leave a remark...",
                                                      hintStyle:
                                                          Fonts.bodyFonts,
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              15),
                                                    ),
                                                  ),
                                                )),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                onPressed: () => {},
                                child: Text(
                                  "Submit",
                                  style: Fonts.bodyFonts,
                                ),
                              ),
                            )
                          ],
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
              ? Fonts.google_fonts_small_white
              : Fonts.google_fonts_small,
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
