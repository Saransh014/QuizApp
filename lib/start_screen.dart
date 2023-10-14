import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png',
            width: 200,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Let the fun quiz begin!",
            style: TextStyle(
              color: Color.fromARGB(255, 173, 192, 217),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 2, 47, 125),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
