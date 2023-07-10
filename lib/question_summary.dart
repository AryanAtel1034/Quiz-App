import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: summaryData.map(
              (data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          child: Text(
                            data['question_text'].toString(),
                            style: GoogleFonts.lato(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          width: 300,
                          child: Text(
                            data["correct_answer"].toString(),
                            style: GoogleFonts.lato(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          padding: const EdgeInsets.only(top: 2),
                          width: 300,
                          child: Text(
                            data["choosen_answer"].toString(),
                            style: GoogleFonts.lato(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ).toList()),
      ),
    );
  }
}
