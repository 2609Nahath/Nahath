import 'package:emp_management_system/EmployeeProjectAndTask/Project/Completed%20Projects/ProjectTaskItems_Completed.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';

class ShowProjectTask_Completed {
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

  Widget buildShowProjectTask(BuildContext context) {
    return Column(
      children: List.generate(projectTaskArr.length, (position) {
        return ProjecttaskItems_Completed(
          dueDate: dueDateArray[position],
          title: projectTaskArr[position],
          tileColor: tileColour.tileColors,
          dueDateColor: tileColour
              .dueDateBgColor[position % tileColour.dueDateBgColor.length],
        );
      }),
    );
  }
}
