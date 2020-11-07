import 'package:flutter/material.dart';
import './question.dart';
import './choice.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var cols = ["red", "green", "blue", "yellow"];
  var _colorState = "blue";

  _answerQuestion(answer) {
    switch (answer) {
      case "red":
        setState(() {
          _colorState = cols[0];
        });
        print("Red");
        break;
      case "green":
        setState(() {
          _colorState = cols[1];
        });
        print("Green");
        break;
      case "blue":
        setState(() {
          _colorState = cols[2];
        });
        print("Blue");
        break;
      case "yellow":
        setState(() {
          _colorState = cols[3];
        });
        print("Yellow");
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          backgroundColor: _colorState == "red"
              ? Colors.red
              : _colorState == "green"
                  ? Colors.green
                  : _colorState == "blue"
                      ? Colors.blue
                      : Colors.amber,
        ),
        body: Column(
          children: [
            Question(_colorState),
            Choice("red", _answerQuestion),
            Choice("green", _answerQuestion),
            Choice("blue", _answerQuestion),
            Choice("yellow", _answerQuestion),
            // RaisedButton(
            //   child: Text('Yellow'),
            //   onPressed: () => answerQuestion(4),
            //   color: _colorState == "red"
            //       ? Colors.red
            //       : _colorState == "green"
            //           ? Colors.green
            //           : _colorState == "blue"
            //               ? Colors.blue
            //               : Colors.amber,
            // ),
          ],
        ),
      ),
    );
  }
}
