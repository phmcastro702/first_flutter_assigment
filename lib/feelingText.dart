import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class FeelingText extends StatelessWidget {
  final String feelingStr;

  FeelingText(this.feelingStr);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 40.0),
      child: Text(
        feelingStr,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: RandomColor()
              .randomColor(colorBrightness: ColorBrightness.veryLight),
        ),
      ),
    );
  }
}
