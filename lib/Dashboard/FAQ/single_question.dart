import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class Single_Question extends StatefulWidget {
  final String question;
  final String answer;
  final Color questionTileColor;
  final Color answerTileColor;

  const Single_Question(
      {super.key,
      required this.question,
      required this.answer,
      required this.questionTileColor,
      required this.answerTileColor});

  @override
  State<Single_Question> createState() => _Single_QuestionState();
}

// ignore: camel_case_types
class _Single_QuestionState extends State<Single_Question> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          decoration:
              BoxDecoration(color: widget.questionTileColor, boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3),
            )
          ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(widget.question, style: Fonts.bodyFonts),
              ),
              Container(
                color: widget.answerTileColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.answer, style: Fonts.bodyFonts),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
