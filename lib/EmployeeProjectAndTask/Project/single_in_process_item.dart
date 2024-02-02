import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/TeamMembers/team_member.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/drawer_button.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/ProjectTaskItems.dart';
import 'package:flutter/material.dart';

class SingleInProcessItem extends StatefulWidget {
  final String title;
  final String description;
  const SingleInProcessItem(this.title, this.description, {super.key});

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

  final ScrollController _scrollController = ScrollController();

  HomeAppBar homeAppBar = HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar.appBar,
      endDrawer: HamburgerButton.buildDrawer(),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
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
                          child: Text(
                            widget.title,
                            style: Fonts.google_fonts,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Due date: ${widget.description}",
                            style: Fonts.smallFonts,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(25)),
                        child: Container(
                            color: const Color.fromARGB(255, 1, 189, 178),
                            padding: EdgeInsets.all(25),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Project Tasks",
                                      style: Fonts.google_fonts,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: List.generate(projectTaskArr.length,
                                      (position) {
                                    return ProjecttaskItems(
                                      dueDate: dueDateArray[position],
                                      title: projectTaskArr[position],
                                      tileColor: tileColour.tileColors,
                                      dueDateColor: tileColour.dueDateBgColor[
                                          position %
                                              tileColour.dueDateBgColor.length],
                                    );
                                  }),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 30, 0, 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Team Members",
                            style: Fonts.google_fonts,
                          ),
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
                          (position) {
                            return TeamMember(
                              tileColor: tileColour.dueDateBgColor[
                                  position % tileColour.dueDateBgColor.length],
                              nameOfMember: teamMembers[position],
                              roleOfMember: roleOfMember[position],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
