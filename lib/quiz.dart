import 'package:flutter/material.dart';
import 'package:second/data/questions.dart';
import 'package:second/start_screen.dart';
import 'package:second/question_screen.dart';
import 'package:second/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswer = [];

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onSelect: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          answersSelected: selectedAnswer,
          again: quizRestart,
        );
      });
    }
  }

  void quizRestart() {
    setState(() {
      selectedAnswer = [];
      activeScreen = StartScreen(switchScreen);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: activeScreen,
      ),
    );
  }
}
