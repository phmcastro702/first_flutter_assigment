import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class FeelingControl extends StatelessWidget {
  final Function pressed;

  FeelingControl(this.pressed);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RaisedButton(
            color: RandomColor()
                .randomColor(colorBrightness: ColorBrightness.veryLight),
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Cheer the boy up!',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            onPressed: pressed,
          ),
        ),
      ],
    );
  }
}
