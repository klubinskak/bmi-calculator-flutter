import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0XFF8D8E98),
);

class ReusableContent extends StatelessWidget {
  const ReusableContent({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
