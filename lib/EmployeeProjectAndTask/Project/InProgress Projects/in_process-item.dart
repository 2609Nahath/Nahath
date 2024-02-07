import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/InProgress%20Projects/single_in_process_item.dart';
import 'package:flutter/material.dart';
import '../../../CircularImage/CircularImageProfile.dart';

class InProcessItem_InProcess extends StatefulWidget {
  final String title;
  final String description;
  final Color descriptionColor;
  final Color tileColor;

  const InProcessItem_InProcess(
      {super.key,
      required this.title,
      required this.tileColor,
      required this.description,
      required this.descriptionColor});
  @override
  // ignore: library_private_types_in_public_api
  _InProcessItem_InProcessState createState() =>
      _InProcessItem_InProcessState();
}

class _InProcessItem_InProcessState extends State<InProcessItem_InProcess> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Card(
                child: Scaffold(
                  backgroundColor: widget.descriptionColor,
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
                                  child: IconButton(
                                      onPressed: () => {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SingleInProcessItem(
                                                            widget.title,
                                                            widget
                                                                .description)))
                                          },
                                      hoverColor: Colors.transparent,
                                      icon:
                                          const Icon(Icons.arrow_forward_ios)),
                                ),
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
                          Text(widget.description, style: Fonts.smallFonts),
                          Spacer(), // Add Spacer widget to take available space
                          CircularImageProfile(),
                          CircularImageProfile(),
                          CircularImageProfile(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
