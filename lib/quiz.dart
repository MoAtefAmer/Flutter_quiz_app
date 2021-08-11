import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final answerQuestion;
  final int questionsIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionsIndex]["questionText"]),
        ...((questions[questionsIndex]["answers"]) as List<String>)
            .map((element) {
          return Answer(selectHandler: answerQuestion, answerText: element);
        }).toList()
      ],
    );
  }
}
