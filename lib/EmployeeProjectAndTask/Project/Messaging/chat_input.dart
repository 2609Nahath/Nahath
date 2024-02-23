import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Type your message...",
                  border: const OutlineInputBorder(),
                  hintStyle: Fonts.bodyFonts(context)),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.send_outlined, size: 30))
        ],
      ),
    );
  }
}
