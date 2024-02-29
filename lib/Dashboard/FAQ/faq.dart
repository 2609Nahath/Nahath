import 'package:emp_management_system/Colors_Fonts/Container/body_container.dart';
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/Colors_Fonts/tileColour/tileColours.dart';
import 'package:emp_management_system/Dashboard/FAQ/questions.dart';
import 'package:emp_management_system/Dashboard/FAQ/single_question.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/Dashboard/drawer_button.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar().appBar(context),
        endDrawer: HamburgerButton.buildDrawer(context),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Scrollbar(
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                    child: Text(
                  "FAQ",
                  style: Fonts.google_fonts_bold_big(context),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Body_Container(
                  child: Column(
                children: List.generate(Questions.questions.length, (position) {
                  return Single_Question(
                      question: Questions.questions[position],
                      answer: Questions.answers[position],
                      questionTileColor: tileColour.checkpointItemsColors[
                          position % tileColour.checkpointItemsColors.length],
                      answerTileColor: MainColors.offWhiteWithOpacity);
                }),
              ))
            ],
          ),
        ));
  }
}
