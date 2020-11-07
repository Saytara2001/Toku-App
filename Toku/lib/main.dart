import 'package:flutter/material.dart';
import 'package:project_4/pages/home_page.dart';

void main() {
  runApp(ProgramLearning());
}

class ProgramLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}