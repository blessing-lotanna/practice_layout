import 'package:flutter/material.dart';
import 'package:layoutpractice/Screens/main_activity.dart';
import 'package:layoutpractice/Screens/practice_screen.dart';

void main() {
  runApp(LayoutPractice());
}

class LayoutPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PraticeScreen(),
      theme: ThemeData(

      ),
    );
  }
}
