import 'package:flutter/material.dart';
import 'package:quiz/text_style.dart';

//form
const String formText = 'Learn Flutter the fun way!';
const double formTestSize = 30;

// button
const String buttonText = 'Start Quiz';
const double buttonTextSize = 20;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Opacity(
            opacity: 0.7,
            child: Image(
              image: AssetImage('assets/images/quiz-logo.png'),
              width: 300,
            ),
          ),
          const SizedBox(height: 30),
          const PlainText(formText, formTestSize),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 25,
            ),
            label: const ButtonText(buttonText, buttonTextSize),
          ),
        ],
      ),
    );
  }
}
