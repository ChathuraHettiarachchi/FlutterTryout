import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var number = 0;
  var questions = [
    {
      "question": "What is your favorite color?",
      "answers": ['Black', 'Red', 'Green', 'White']
    },
    {
      "question": "What is your favorite animal?",
      "answers": ['Cat', 'Dog', 'Tiger', 'Lion']
    },
    {
      "question": "What is your age range",
      "answers": ['18-25', '26-30', '31-40', '41-60']
    },
    {
      "question": "What is your vehicle?",
      "answers": ['Car', 'Bike', 'Ship', 'None']
    },
  ];

  void _answerQuestion() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          'Quiz App',
        ))),
        body: number < questions.length ? Column(
          children: [
            Question(questions[number]['question']),
            ...(questions[number]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ): Text("Try again"),
      ),
    );
  }
}
