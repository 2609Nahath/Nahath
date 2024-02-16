import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/Messaging/chat_input.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Project/Messaging/chat_messgae.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/drawer_button.dart';
import 'package:flutter/material.dart';

class Chatting extends StatelessWidget {
  const Chatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: HamburgerButton.buildDrawer(context),
      appBar: HomeAppBar().appBar,
      body: ChattingBody(),
    );
  }
}

class ChattingBody extends StatelessWidget {
  const ChattingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true, // Reverse the order of the list
              children: const [
                ChatMessage(isMe: true, message: "Hello!"),
                ChatMessage(isMe: false, message: "Hi there!"),
                // Add more chat messages as needed
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
