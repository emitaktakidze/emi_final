import 'package:emi_final/screens/score_page.dart';
import 'package:flutter/material.dart';

class QuizHard extends StatefulWidget {
  const QuizHard({Key? key}) : super(key: key);

  @override
  State<QuizHard> createState() => _QuizHardState();
}

class _QuizHardState extends State<QuizHard> {
  var score = 0;

  final questions = ["რა მქვია?", "რამდენი წლის ვარ?", "საიდან ვარ?"];

  final answersA = ["სანდრო", "23", "საქართველო"];

  final answersB = ["ნინო", "28", "საფრანგეთი"];

  final answersC = ["გიორგი", "12", "ამერიკა"];

  final answersD = ["ნიკა", "1", "იტალია"];

  final correctAnswers = ["გიორგი", "28", "საქართველო"];

  var index = 0;

  var buttonAColor = Colors.blue;
  var buttonBColor = Colors.blue;
  var buttonCColor = Colors.blue;
  var buttonDColor = Colors.blue;

  var nextQuestionVisible = true;

  var alreadyAnswered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('მარტივი ქვიზი'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Score: $score",
                    style: const TextStyle(
                      color: Colors.purple,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    questions[index],
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersA[index]) {
                      setState(() {
                        score++;
                        buttonAColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonAColor = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    alreadyAnswered = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: buttonAColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    answersA[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersB[index]) {
                      setState(() {
                        score++;
                        buttonBColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonBColor = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    alreadyAnswered = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: buttonBColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    answersB[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersC[index]) {
                      setState(() {
                        score++;
                        buttonCColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonCColor = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    alreadyAnswered = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: buttonCColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    answersC[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersD[index]) {
                      setState(() {
                        score++;
                        buttonDColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonDColor = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    alreadyAnswered = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: buttonDColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    answersD[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Visibility(
                visible: nextQuestionVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                        icon: const Icon(Icons.navigate_next),
                        onPressed: () {
                          if (questions.length > index + 1) {
                            setState(() {
                              index++;
                            });
                          }

                          if (index == questions.length - 1) {
                            {
                              setState(() {
                                nextQuestionVisible = false;
                              });
                            }
                          }
                          buttonAColor = Colors.blue;
                          buttonBColor = Colors.blue;
                          buttonCColor = Colors.blue;
                          buttonDColor = Colors.blue;
                          alreadyAnswered = false;
                        },
                        label: const Text('შემდეგი')),
                  ],
                ),
              ),
              Visibility(
                visible: !nextQuestionVisible,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScoreScreen(score: score)));
                  },
                  child: const Text("ქულის ნახვა"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      buttonAColor = Colors.blue;
                      buttonBColor = Colors.blue;
                      buttonCColor = Colors.blue;
                      buttonDColor = Colors.blue;
                      score = 0;
                      alreadyAnswered = false;
                      nextQuestionVisible = true;
                    });
                  },
                  child: const Text("თავიდან დაწყება"))
            ],
          ),
        ),
      ),
    );
  }
}
