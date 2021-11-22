import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int resultscore;

  Result(this.reset, this.resultscore);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(children: [
          Text("Score is " + resultscore.toString()),
          ElevatedButton(
            onPressed: () => reset(),
            child: Text("Restart"),
          ),
        ]));
  }
}
