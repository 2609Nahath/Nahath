import 'package:emp_management_system/CircularImage/CircularImageProfile.dart';
import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/Messaging/chat.dart';
import 'package:emp_management_system/Ratings/personal_rating.dart';
import 'package:flutter/material.dart';

class TeamMember extends StatelessWidget {
  final Color tileColor;
  final String nameOfMember;
  final String roleOfMember;

  const TeamMember({
    Key? key,
    required this.tileColor,
    required this.nameOfMember,
    required this.roleOfMember,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 50,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        color: tileColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Center(
                  child: CircularImageProfile(),
                )),
            Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    nameOfMember,
                    style: Fonts.memberNameFonts(context),
                  ),
                )), // Assuming this widget is appropriately sized
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                roleOfMember,
                style: Fonts.memberRoleFonts(context),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Rating(),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Chatting()))
                },
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
