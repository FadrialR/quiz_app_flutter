import 'package:flutter/material.dart';
import 'package:quiz_app/component/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuiestion = questions[2];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 200),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: 400,
                  height: 500,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          currentQuiestion.text,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Answers
                        AnswerButton(
                          answerText: currentQuiestion.answers[0],
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        AnswerButton(
                          answerText: currentQuiestion.answers[1],
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        AnswerButton(
                          answerText: currentQuiestion.answers[2],
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        AnswerButton(
                          answerText: currentQuiestion.answers[3],
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
