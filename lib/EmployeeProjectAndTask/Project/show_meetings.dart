import 'package:emp_management_system/EmployeeProjectAndTask/Project/Meetings/meetings.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/InProgress%20Projects/ProjectTaskItems_InProcess.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';

class ShowMeetings {
  var meetingName = [
    "First meeting",
    "Second meeting",
    "Third meeting",
    "Fourth meeting"
  ];
  var meetingDate = ["02/02/2024", "01/02/24", "31/01/24", "29/01/24"];
  var meetingTime = [
    "10:00-10:30 AM",
    "10:00-10:30 AM",
    "10:00-10:30 AM",
    "10:00-10:30 AM"
  ];
  Widget buildShowMeetings(BuildContext context) {
    // Your implementation for the Meetings screen goes here
    // For example:
    return Column(
      children: List.generate(meetingName.length, (position) {
        return Meetings(
          meetingName: meetingName[position],
          meetingDate: meetingDate[position],
          meetingTime: meetingTime[position],
          tileColor: tileColour.tileColors,
          color: tileColour
              .dueDateBgColor[position % tileColour.dueDateBgColor.length],
        );
      }),
    );
  }
}
