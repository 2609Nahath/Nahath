import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class Checkpoint extends StatefulWidget {
  final String checkpointName;
  final String checkpointDate;
  final Color checkpointColor;

  const Checkpoint(
      {super.key,
      required this.checkpointName,
      required this.checkpointDate,
      required this.checkpointColor});

  @override
  State<Checkpoint> createState() => _CheckpointState();
}

class _CheckpointState extends State<Checkpoint> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: widget.checkpointColor,
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              widget.checkpointName,
                              style: Fonts.smallFonts,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Text(
                                    " ${widget.checkpointDate}",
                                    style: Fonts.smallFonts,
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
