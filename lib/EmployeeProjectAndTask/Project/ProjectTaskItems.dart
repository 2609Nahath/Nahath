import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';
import '../../CircularImage/CircularImageProfile.dart';

class ProjecttaskItems extends StatefulWidget {
  final String title;
  final String dueDate;
  final Color dueDateColor;
  final Color tileColor;

  const ProjecttaskItems(
      {super.key,
      required this.title,
      required this.tileColor,
      required this.dueDate,
      required this.dueDateColor});
  @override
  // ignore: library_private_types_in_public_api
  _ProjecttaskItemsState createState() => _ProjecttaskItemsState();
}

class _ProjecttaskItemsState extends State<ProjecttaskItems> {
  bool expanded = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Card(
                child: Scaffold(
                  backgroundColor: widget.dueDateColor,
                  body: Column(
                    children: [
                      Container(
                        color: widget.tileColor,
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.title,
                                        style: Fonts.bodyFonts),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 3, 10, 0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value ?? false;
                                        });
                                      },
                                      checkColor: Colors.white,
                                      activeColor: Colors.black,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Due date",
                            style: Fonts.smallFonts,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(Icons.calendar_month),
                            ),
                          ),
                          Text(widget.dueDate, style: Fonts.smallFonts),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
