import 'package:emi_final/screens/quiz_easy.dart';
import 'package:emi_final/screens/quiz_hard.dart';
import 'package:flutter/material.dart';

class QuizLevels extends StatelessWidget {
  const QuizLevels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ქვიზები"),),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizEasy()));

              },
              child: Container(
                margin:const  EdgeInsets.only(left: 16,top: 16,right: 16,bottom: 8),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Text("მარტივი ქვიზი",style: TextStyle(color: Colors.white, fontSize: 32),),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizHard()));
              },
              child: Container(
                margin:const  EdgeInsets.only(left: 16,top: 8,right: 16,bottom: 16),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Text("რთული ქვიზი",style: TextStyle(color: Colors.white, fontSize: 32),),
              ),
            ),
          ),
        ],),
    );
  }
}
