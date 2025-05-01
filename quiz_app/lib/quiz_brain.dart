import 'question.dart';

class QuizBrain {
  int _questionIndex = 0;

  final List<Question> _questionBank = [
    Question('The sun rises in the east.', true),
    Question('Python is a type of snake and also a programming language.', true),
    Question('Water boils at 100°C at sea level.', true),
    Question('The Great Wall of China is visible from the Moon.', false),
    Question('A kilogram is heavier than a pound.', true),
    Question('Sharks are mammals.', false),
    Question('Mount Everest is the tallest mountain in the world.', true),
    Question('Humans have three lungs.', false),
    Question('The Pacific Ocean is the largest ocean on Earth.', true),
    Question('Goldfish have a memory span of only 3 seconds.', false),
  ];

  String getQuestionText() {
    return _questionBank[_questionIndex].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionIndex].questionAnswer;
  }

  void nextQuestion() {
    if (_questionIndex < _questionBank.length - 1) {
      _questionIndex++;
    }
  }

  bool isFinished() {
    return _questionIndex >= _questionBank.length - 1;
  }

  void reset() {
    _questionIndex = 0;
  }
}
