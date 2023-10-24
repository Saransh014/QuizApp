import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor:
                          data['user_answer'] == data['correct_answer']
                              ? Colors.green
                              : Colors.red,
                      child: Text(
                          ((data['question_index'] as int) + 1).toString())),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                              color:
                                  data['user_answer'] == data['correct_answer']
                                      ? const Color.fromARGB(255, 0, 255, 8)
                                      : const Color.fromARGB(255, 249, 46, 32)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                              color:
                                  data['user_answer'] == data['correct_answer']
                                      ? const Color.fromARGB(255, 0, 255, 8)
                                      : const Color.fromARGB(255, 0, 255, 8)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
