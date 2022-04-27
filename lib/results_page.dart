import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'bmi_calculator_logic.dart';

class ResultsPage extends StatefulWidget {
  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kCardColor,
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            textResult,
                            style: TextStyle(fontSize: 30.0, color: color),
                          ),
                          Text(
                            "${result.round()}",
                            style: TextStyle(
                                fontSize: 100.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            quote,
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomBtn(
              text: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
