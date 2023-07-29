import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    double heightInMeters = height/100;
    _bmi = weight / pow(heightInMeters, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getConclusion() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try excercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }

}