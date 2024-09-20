import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 320,
            ),
            const SizedBox(height: 50),

            // Text
            const Text(
              "Learn Flutter the Fun Way!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            // Button
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[900],
                side: BorderSide(color: Colors.white),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Start Quiz',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
