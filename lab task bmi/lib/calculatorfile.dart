import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.compare});

  final int? height;
  final int? weight;
  final int? age;
  final int? compare;
  int? _bmi;

  String calculateBMI() {
    if (compare! >= age! && compare! >= weight!) {
      return 'Perfect Guess';
    }
    else if (compare! < age! && compare! < weight!) {
      return 'Too High Guess';
    }
    if (compare! > age! && compare! > weight!) {
      return 'Too Low Guess';
    }
    else {
      return 'Error';
    }
    _bmi = compare;
  }

}