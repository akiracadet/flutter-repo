import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Todo: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    // This should be a function call not a function declaration.
    setState(() {
      questionIndex++;

      if (questionIndex == 2) {
        questionIndex = 0;
      }
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
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
              onPressed: () => {
                // ...
                print('Answer 3 chosen!')
              },
            ),
          ],
        ),
      ),
    );
  }
}
