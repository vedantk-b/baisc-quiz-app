import 'package:basic_quiz_app/answer.dart';
import 'package:basic_quiz_app/question.dart';
import 'package:basic_quiz_app/quiz.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  final quilist = [
    {
      "ques": "Stress is?",
      "ans": [
        {"option": "vector", "score": 0},
        {"option": "Tensor", "score": 10},
        {"option": "Scalar", "score": 0},
      ],
    },
    {
      "ques": "Shear rstress and normal are independent",
      "ans": [
        {"option": "Yes", "score": 0},
        {"option": "No", "score": 10},
      ],
    },
    {
      "ques": "Which is illegal circuit",
      "ans": [
        {"option": "Current Source in parallel", "score": 0},
        {"option": "Current Source in Series", "score": 10},
        {"option": "Voltage Source in Series", "score": 0},
      ],
    }
  ];

  var qin = 0;
  var totalscore = 0;

  void reset() {
    totalscore = 0;
    setState(() {
      qin = 0;
    });
  }

  void next(int score) {
    totalscore += score;
    setState(() {
      qin += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: qin < quilist.length
            ? Quizrun(quilist, qin, next)
            : Result(reset, totalscore),
      ),
    );
  }
}
