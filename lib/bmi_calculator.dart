import 'dart:math';

class Calculator {
  int weight;
  double height;
  double _bmi = 1;

  Calculator({required this.weight, required this.height});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getMessage() {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi >= 25) {
      return 'You are overweight';
    } else if (_bmi >= 18) {
      return 'You have a normal body weight';
    } else {
      return 'You are underweight';
    }
  }
}
