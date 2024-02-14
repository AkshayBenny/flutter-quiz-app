import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 380,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: data['user_answer'] == data["correct_answer"]
                            ? const Color.fromARGB(255, 33, 180, 0)
                            : const Color.fromARGB(255, 157, 0, 0),
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          ((data["question_index"] as int) + 1).toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data["question"].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Chosen: ${data["user_answer"].toString()}',
                            style: TextStyle(
                              color:
                                  data['user_answer'] == data["correct_answer"]
                                      ? const Color.fromARGB(255, 33, 180, 0)
                                      : const Color.fromARGB(255, 243, 86, 86),
                            ),
                          ),
                          Text(
                            'Correct: ${data["correct_answer"].toString()}',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 33, 180, 0)),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
