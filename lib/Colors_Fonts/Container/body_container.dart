import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:flutter/material.dart';

class Body_Container extends StatelessWidget {
  final Widget child;

  const Body_Container({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      child: Container(
        color: MainColors.mainColor,
        child: child,
      ),
    );
  }
}
