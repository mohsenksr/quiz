import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String choiceName;
  final Function _answerQuestion;

  Choice(this.choiceName, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(choiceName),
        onPressed: () => _answerQuestion(choiceName),
        color: choiceName == "red"
            ? Colors.red
            : choiceName == "green"
                ? Colors.green
                : choiceName == "blue"
                    ? Colors.blue
                    : Colors.amber,
      ),
    );
  }
}
