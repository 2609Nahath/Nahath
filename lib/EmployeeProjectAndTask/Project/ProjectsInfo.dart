import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class ProjectsInfo extends StatefulWidget {
  final String startDate;
  final String description;
  final String teamMember;
  final String roleOfMember;

  const ProjectsInfo({
    super.key,
    required this.startDate,
    required this.description,
    required this.teamMember,
    required this.roleOfMember,
  });

  @override
  State<ProjectsInfo> createState() => _ProjectsInfoState();
}

class _ProjectsInfoState extends State<ProjectsInfo> {
  int totalTaskNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Start Date: ${widget.startDate}",
                    style: Fonts.bodyFonts(context),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Description: ${widget.description}",
                    style: Fonts.bodyFonts(context),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
