import 'dart:math';

import 'package:emp_management_system/EmployeeProjectAndTask/Task/Completed_Task/completed_task.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Task/InProgress_Task/in_progress_task.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Task/add_task.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';

class TaskBody {
  var TaskArr = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];
  //Colors of tiles
  static Color tileColors = Color.fromRGBO(255, 255, 255, 0.4);
  static List<Color> descriptionBgColor = [
    const Color.fromRGBO(1, 189, 178, .2),
    const Color.fromRGBO(104, 180, 175, 0.698),
    const Color.fromRGBO(57, 163, 156, 0.801),
  ];

  Widget buildTaskBody(BuildContext context) {
    final int itemCount = min(TaskArr.length, 3);
    AddTask addTask = AddTask();

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
              Container(
                padding: const EdgeInsets.all(20),
                child: Text("View all", style: Fonts.smallFonts),
              ),
            ],
          ),
          Column(
            children: List.generate(itemCount, (position) {
              return ShowInProgressTask_Items(
                  title: TaskArr[position],
                  tileColor: tileColors,
                  description: "01/02/2023",
                  descriptionColor:
                      descriptionBgColor[position % descriptionBgColor.length]);
            }),
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(20),
                child: Text("Completed", style: Fonts.boldFonts),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(20),
                child: Text("View all", style: Fonts.smallFonts),
              ),
            ],
          ),
          Column(
            children: List.generate(itemCount, (position) {
              return ShowCompletedTask_Items(
                  title: TaskArr[position],
                  tileColor: tileColors,
                  description: "01/02/2023",
                  descriptionColor:
                      descriptionBgColor[position % descriptionBgColor.length]);
            }),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 1, 189, 178),
                onPressed: () {
                  addTask.showTaskBody(context);
                },
                child: const Icon(Icons.add),
              ),
            ),
          )
        ],
      )),
    );
  }
}
