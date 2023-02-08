import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> questionBank = [
    Question('The human body has 89 tissues', false),
    Question('Accra is the capital city of Ghana', true),
    Question('Ghana has 10 regions', false),
    Question('Nana Addo is the president of Ghana', true),
    Question('Ghana scored portugal in the world cup', false),
    Question('little salt kills flesh', false),
    Question('Money is the root of all evil', false),
    Question('mice is the plural for mouse', true),
    Question('Ghana has 10 regions', false),
  ];

  void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }
}
