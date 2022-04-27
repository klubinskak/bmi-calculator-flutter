import 'dart:math';

import 'package:flutter/material.dart';

double result;
String textResult = 'OVERWEIGHT';
String quote;
Color color;

// bmi calculator logic
countBMI(int weight, int height) {
  result = weight / pow(height / 100, 2);
  if (result <= 18) {
    textResult = 'UNDERWEIGHT';
    color = Colors.red;
    quote = 'You have a lower than normal body weight. Try to eat more.';
  } else if (result < 23) {
    color = Colors.green;
    textResult = 'GOD WEIGHT';
    quote = 'You have a good weight. Keep going.';
    print('good');
  } else if (result > 24) {
    color = Colors.red;
    textResult = 'OVERWEIGHT';
    quote = 'You have a higher than normal body weight. Try to exercise more.';
  }
  return result;
}
