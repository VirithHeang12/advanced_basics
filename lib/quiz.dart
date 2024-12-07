import 'package:advanced_basics/questions_screen.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      widget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF5433FF), Color(0xFF20BDFF)])),
          child: widget,
        ),
        appBar: AppBar(
          title: const Text('Advanced Basics'),
        ),
      ),
    );
  }
}
