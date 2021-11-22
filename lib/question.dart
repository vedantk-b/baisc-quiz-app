import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qn;

  Question(this.qn);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        qn,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
