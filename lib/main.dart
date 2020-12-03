import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import './feelingText.dart';
import './feelingControl.dart';
import './app.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  static const _feelingsDB = [
    'I should be assigning assignments, but now we\'re here :P',
    'Alright, now I\'m fine, thanks champs!',
    'Elon is making me so sad too :(',
    'Yeah, you\'re right, he got nothing on me! Obladi-oblada, life goes on bra!'
  ];

  var currentFeelingIndex = 0;

  void _cheerUpBtnPressed() {
    setState(() {
      currentFeelingIndex = currentFeelingIndex < _feelingsDB.length - 1
          ? ++currentFeelingIndex
          : 0;
      print(currentFeelingIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: RandomColor()
              .randomColor(colorBrightness: ColorBrightness.veryDark),
          appBar: AppBar(
            title: Text('The naissu firstsuro fluttero assignmero'),
            backgroundColor: RandomColor()
                .randomColor(colorBrightness: ColorBrightness.veryDark),
          ),
          body: App(
            cheerUp: _cheerUpBtnPressed,
            feelingText: _feelingsDB[currentFeelingIndex],
          ),
        ));
  }
}
