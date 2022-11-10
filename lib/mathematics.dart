import 'package:flutter/material.dart';

import 'package:quizit/quiz.dart';

void main() {
  runApp(const mathematics(title: 'mathematics',));
}

class mathematics extends StatelessWidget {
  const mathematics({Key? key, required String title}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen1(title: 'QuizScreen1',));
  }
}