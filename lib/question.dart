import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var _colorState = "blue";

  Question(this._colorState);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _colorState == "red"
          ? Colors.red
          : _colorState == "green"
              ? Colors.green
              : _colorState == "blue"
                  ? Colors.blue
                  : Colors.amber,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        'Select the theme:',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
