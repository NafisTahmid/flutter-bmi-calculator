import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Over weight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getSuggestions() {
    if (_bmi >= 25) {
      return "You're overweight. You should exercise more";
    } else if (_bmi >= 18.5) {
      return "You've a normal body weight. Good job";
    } else {
      return 'You are underweight. You should exercise more';
    }
  }
}
