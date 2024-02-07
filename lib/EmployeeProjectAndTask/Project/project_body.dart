import 'package:emp_management_system/EmployeeProjectAndTask/Project/view_in_progress_projects.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/Completed%20Projects/completed_item.dart';
import 'package:flutter/material.dart';
import '../../Colors_Fonts/Fonts/font.dart';
import 'InProgress Projects/in_process-item.dart';
import 'dart:math'; // Added import for dart:math

class ProjectBody {
  var inProgressProjectArr = [
    'Employee Management System',
    'LMS',
    'ERP System',
    'Project 4',
    'Project 5',
    'Project 6'
  ];
  var completedProjectArr = [
    'Project 1',
    'Project 2',
    'Project 3',
    'Project 4',
    'Project 5',
    'Project 6'
  ];
  var dueDateArray = [
    '19/02/2024',
    '15/04/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024'
  ];
  var completedDate = ['01/02/2022', '05/11/2023', '23/12/2023'];

  static Color tileColors = const Color.fromRGBO(218, 217, 217, 0.408);

  static List<Color> descriptionBgColor = [
    const Color.fromRGBO(1, 189, 178, .2),
    const Color.fromRGBO(104, 180, 175, 0.698),
    const Color.fromRGBO(57, 163, 156, 0.801),
  ];

  Widget buildProjectBody(BuildContext context) {
    final int itemCount = min(inProgressProjectArr.length, 3);
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text("In Progress", style: Fonts.boldFonts),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ViewInProgressProjects(inProgressProjectArr),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remove the color when the button is hovered
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.transparent;
                        }
                        // Default color when not hovered
                        return Colors.transparent;
                      },
                    ),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                        // Set the fontWeight when the button is hovered
                        if (states.contains(MaterialState.hovered)) {
                          return Fonts.boldFonts.copyWith(
                            color: Colors.black,
                          );
                        }
                        // Default font style when not hovered
                        return Fonts.smallFonts.copyWith(
                          color: Colors.black,
                        );
                      },
                    ),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("View all"),
                ),
              ],
            ),
            Column(
              children: List.generate(itemCount, (position) {
                return InProcessItem_InProcess(
                  title: inProgressProjectArr[position],
                  tileColor: tileColors,
                  description: dueDateArray[position],
                  descriptionColor:
                      descriptionBgColor[position % descriptionBgColor.length],
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text("Completed", style: Fonts.boldFonts),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ViewInProgressProjects(completedProjectArr),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remove the color when the button is hovered
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.transparent;
                        }
                        // Default color when not hovered
                        return Colors.transparent;
                      },
                    ),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                        // Set the fontWeight when the button is hovered
                        if (states.contains(MaterialState.hovered)) {
                          return Fonts.boldFonts.copyWith(
                            color: Colors.black,
                          );
                        }
                        // Default font style when not hovered
                        return Fonts.smallFonts.copyWith(
                          color: Colors.black,
                        );
                      },
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("View all"),
                ),
              ],
            ),
            Column(
              children: List.generate(itemCount, (position) {
                return CompletedItems(
                  title: completedProjectArr[position],
                  tileColor: tileColors,
                  description: completedDate[position],
                  descriptionColor:
                      descriptionBgColor[position % descriptionBgColor.length],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
