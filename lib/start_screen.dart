import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quizlogo.png',
            color: const Color.fromARGB(178, 255, 255, 255),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Text(
              "Learn Flutter the fun way!!",
              style: GoogleFonts.dancingScript(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: OutlinedButton.icon(
              icon: const Icon(
                Icons.quiz,
                color: Colors.white,
              ),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 8,
                side: const BorderSide(width: 0.7, color: Colors.black),
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
