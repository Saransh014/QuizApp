import 'package:adv_basics/utils/utils.dart';
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
            'assets/images/quiz_start_screen.png',
            width: 200,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Let the fun quiz begin!",
            style: TextStyle(
              color: Color.fromARGB(255, 217, 229, 245),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 2, 47, 125),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
          const SizedBox(height:60),
          OutlinedButton(
            onPressed: (){
              Utils.openPrivacyPolicy();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),

            child:const Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }
}
