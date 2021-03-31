import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectionHandler;
  final String answerText;

  Answer(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text(answerText),
        onPressed: selectionHandler,
      ),
    );
  }
}
