import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class ShowMaterial {
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
  Widget buildShowMaterial(BuildContext context) {
    // Your implementation for the Materials screen goes here
    // For example:
    return Column(
      children: [
        Text(
          "No materials ",
          style: Fonts.bodyFonts,
        )
      ],
    );
  }
}
