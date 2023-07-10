import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second/data/questions.dart';
import 'package:second/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answersSelected,
    required this.again,
  });

  final List<String> answersSelected;
  final void Function() again;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < answersSelected.length; i++) {
      summary.add({
        'question_index': i,
        'question_text': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'choosen_answer': answersSelected[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have solve X correct answers in ${questions.length}  questions",
            style: GoogleFonts.robotoCondensed(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          QuestionSummary(summaryData: getSummaryData()),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: OutlinedButton.icon(
              icon: const Icon(
                Icons.next_plan,
                color: Colors.white,
              ),
              onPressed: again,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 8,
                side: const BorderSide(
                  width: 0.7,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
              ),
              label: const Text(
                "Start Quiz Again",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
