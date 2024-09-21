import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(),
        child: Text(answerText),
      ),
    );
  }
}
