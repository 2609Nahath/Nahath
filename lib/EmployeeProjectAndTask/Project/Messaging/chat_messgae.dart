import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final bool isMe;
  final String message;

  const ChatMessage({super.key, required this.isMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe
              ? MainColors.mainColor
              : const Color.fromARGB(255, 209, 209, 209),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(message, style: Fonts.bodyFonts),
      ),
    );
  }
}
