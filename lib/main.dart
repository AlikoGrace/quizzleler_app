import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Quizzler(),
    );
  }
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  quizBrain.nextQuestion();
                });
              },
              child: Container(
                color: Colors.green,
                height: 70,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )),
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  quizBrain.nextQuestion();
                });
              },
              child: Container(
                color: Colors.red,
                height: 70,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "False",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}
