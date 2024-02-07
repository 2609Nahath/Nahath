import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class Meetings extends StatefulWidget {
  final String meetingName;
  final String meetingDate;
  final Color color;
  final Color tileColor;
  final String meetingTime;

  const Meetings(
      {super.key,
      required this.meetingName,
      required this.meetingDate,
      required this.meetingTime,
      required this.color,
      required this.tileColor});

  @override
  State<Meetings> createState() => _MeetingsState();
}

class _MeetingsState extends State<Meetings> {
  int currentPage = 0;
  bool isReady = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5),
        height: 135,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Card(
              child: Scaffold(
                backgroundColor: widget.color,
                body: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                widget.meetingName,
                                style: Fonts.bodyFonts,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month,
                                    size: 15,
                                  ),
                                  Text(
                                    " ${widget.meetingDate}",
                                    style: Fonts.smallFonts,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      color: widget.color,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.timelapse_rounded,
                                      size: 15,
                                    ),
                                    Text(
                                      " ${widget.meetingTime}",
                                      style: Fonts.smallFonts,
                                    ),
                                  ],
                                )),
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.download,
                                    size: 15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          " Example.pdf ",
                                          style: Fonts.smallFonts,
                                        ),
                                      ),
                                      const Icon(Icons.picture_as_pdf_sharp)
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
