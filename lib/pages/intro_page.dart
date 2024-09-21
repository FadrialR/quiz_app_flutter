import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: Colors.blueGrey,
              ),
              const SizedBox(height: 70),

              // Text
              const Text(
                "Learn Flutter the Fun Way!",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Button
              const SizedBox(height: 70),
              OutlinedButton(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blueGrey),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Start Quiz',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
