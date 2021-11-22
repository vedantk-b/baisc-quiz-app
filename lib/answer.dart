import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function next;
  final String ans;
  final int score;
  Answer(this.next, this.ans, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => next(score),
          child: Text(
            ans,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 20,
            ),
          ),
        ));
  }
}
