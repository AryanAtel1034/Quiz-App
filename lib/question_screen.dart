import 'package:flutter/material.dart';
import 'package:second/answers_button.dart';
import 'package:second/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelect});

  final void Function(String answer) onSelect;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void incrementQuestionIndex(String selectedAnswer) {
    widget.onSelect(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      color: Colors.teal,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            
            padding: const EdgeInsets.all(10),
            child: Text(
              currentQuestion.question,
              style: GoogleFonts.robotoCondensed(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffled().map(
            (answer) {
              return AnswerButton(
                text: answer,
                onTap: () {
                  incrementQuestionIndex(answer);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
