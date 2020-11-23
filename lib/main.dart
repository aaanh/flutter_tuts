import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// using arrow function for functions with ONLY 1 expression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override // needs to be overwritten
  State<StatefulWidget> createState() {
    
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0; // inferred as int, called property

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    if (questionIndex > 1) {
      questionIndex = questionIndex - 1;
    }
    print(questionIndex);
  }

  @override // decorator
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print("Answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
