import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   return MyAppState();
  // }

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  // var _questions = ["What\'s your fav color?", "What\'s your fav animal?"];
  final _questions = const [
    {
      "questionText": "What\'s your fav color?",
      "answers": ["Black", "Blue", "Yellow", "Green"]
    },
    {
      "questionText": "What\'s your fav animal?",
      "answers": ["Dinosaur", "Lion", "Dog", "Cat"]
    },
    {
      "questionText": "What\'s your fav breakfast?",
      "answers": ["No Breakfast", "Toast", "Eggs", "Pancake"]
    },
  ];
  void _answerQuestion() {
    print("Click");
    // if (_questionsIndex == _questions.length - 1) _questionsIndex = 0;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questions.length);

    print(_questionsIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Welcome to my App!"),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionsIndex: _questionsIndex,
              )
            : Center(
                child: Flex(direction: Axis.vertical, children: <Widget>[
                  Text("You did it!"),
                  ElevatedButton(
                    onPressed: _resetQuiz,
                    child: const Text('Reset'),
                  ),
                ]),
              ),
      ),
    );
  }
}

void propQuestion({String text = ""}) {
  print(text);
}



// ElevatedButton(
//                 onPressed: () => propQuestion(text: "Hi"),
//                 child: Text("Answer 2")),