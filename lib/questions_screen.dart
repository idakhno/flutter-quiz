import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/text_style.dart';
import 'package:quiz/answer_button.dart';

// title text settings
const double topTextSize = 20;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PlainText(currentQuestion.text, topTextSize),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return FractionallySizedBox(
                widthFactor: 0.30,
                child: AnswerButton(answer, () {
                  answerQuestion(answer);
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
