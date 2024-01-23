import 'package:flutter/material.dart';
import 'package:flutter_rating_app/presentation/main/rating_dialog/question.dart';
import 'package:flutter_rating_app/presentation/main/rating_page.dart';

class RatingDialog extends StatefulWidget {
  const RatingDialog({super.key});

  @override
  _RatingDialogState createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Bảng đánh giá'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: questions
              .map((question) => _buildQuestionRow(
                  context, question, questions.indexOf(question) + 1))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildQuestionRow(
      BuildContext context, Question question, int questionNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${question.id}. ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Text(
                question.questionText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        if (questionNumber == 7)
          Column(
            children: question.answerOptions
                .map((answer) =>
                    _buildRadioWithText(context, questionNumber, answer))
                .toList(),
          ),
        if (questionNumber != 7)
          Row(
            children: question.answerOptions
                .map((answer) =>
                    _buildRadioWithText(context, questionNumber, answer))
                .toList(),
          ),
      ],
    );
  }

  Widget _buildRadioWithText(
      BuildContext context, int questionNumber, String text) {
    return Row(
      children: [
        Radio(
          value: text,
          groupValue: questions[questionNumber - 1].selectedAnswer,
          onChanged: (value) {
            setState(() {
              questions[questionNumber - 1].selectedAnswer = value!;
            });
          },
        ),
        Text(text),
      ],
    );
  }
}
