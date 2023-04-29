import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key, required this.score}) : super(key: key);
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("ქულა"),),
        body: Center(child: Text("შენ მოაგროვე $score ქულა"),),
    );
  }
}
