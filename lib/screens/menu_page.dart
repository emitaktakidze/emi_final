import 'package:emi_final/screens/about_page.dart';
import 'package:emi_final/screens/quiz_levels.dart';
import 'package:emi_final/screens/theory_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("მენიუ"),actions: [
        IconButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutPage()));
        }, icon: const Icon(Icons.info_rounded))
      ],),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TheoryPage()));
              },
              child: Container(
                margin:const  EdgeInsets.only(left: 16,top: 16,right: 16,bottom: 8),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Text("კიბერუსაფრთხოება",style: TextStyle(color: Colors.white, fontSize: 32),),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizLevels()));
              },
              child: Container(
                margin:const  EdgeInsets.only(left: 16,top: 8,right: 16,bottom: 16),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Text("ქვიზები",style: TextStyle(color: Colors.white, fontSize: 32),),
              ),
            ),
          ),
      ],),
    );
  }
}
