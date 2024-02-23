import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:flutter/material.dart';

import '../../Dashboard/drawer_button.dart';
import 'InProgress Projects/in_process-item.dart';

class ViewInProgressProjects extends StatefulWidget {
  final List<String> inProgressProjects;

  const ViewInProgressProjects(this.inProgressProjects, {super.key});

  @override
  State<ViewInProgressProjects> createState() => _ViewInProgressProjectsState();
}

class _ViewInProgressProjectsState extends State<ViewInProgressProjects> {
  //declaring instance of HomeAppBar class
  HomeAppBar homeAppBar = HomeAppBar();
  static List<Color> descriptionBgColor = [
    const Color.fromRGBO(1, 189, 178, .2),
    const Color.fromRGBO(104, 180, 175, 0.698),
    const Color.fromRGBO(57, 163, 156, 0.801),
  ];
  var dueDateArray = [
    '19/02/2024',
    '15/04/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024',
    '08/05/2024'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        endDrawer: HamburgerButton.buildDrawer(context),
        appBar: homeAppBar.appBar,
        body: Scrollbar(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
                child: Text(
                  "In Progress ",
                  style: Fonts.headFonts(context),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Container(
                    color: const Color.fromARGB(255, 1, 189, 178),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (context, position) {
                              return InProcessItem_InProcess(
                                title: widget.inProgressProjects[position],
                                tileColor:
                                    const Color.fromRGBO(218, 217, 217, 0.408),
                                description: dueDateArray[position],
                                descriptionColor: descriptionBgColor[
                                    position % descriptionBgColor.length],
                              );
                            },
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
