import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quizrun extends StatelessWidget {
  final List<Map<String, Object>> quilist;
  final int qin;
  final Function next;

  Quizrun(this.quilist, this.qin, this.next);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quilist[qin]["ques"].toString()),
        ...(quilist[qin]["ans"] as List<Map<String, Object>>)
            .map((e) => Answer(next, (e["option"]).toString(), e["score"] as int))
            .toList(),
      ],
    );
  }
}
