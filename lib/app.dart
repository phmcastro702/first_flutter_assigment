import 'package:flutter/material.dart';
import './feelingControl.dart';
import './feelingText.dart';

class App extends StatelessWidget {
  final String feelingText;
  final Function cheerUp;

  App({this.cheerUp, this.feelingText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeelingText(feelingText),
        FeelingControl(cheerUp),
      ],
    );
  }
}
