import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0x0FF0A0E21),
              secondary: Color.fromARGB(255, 42, 57, 132),
            ),
        scaffoldBackgroundColor: Color(0x0FF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
