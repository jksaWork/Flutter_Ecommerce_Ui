import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontsize;
  TextAlign alignment;
  var color;
  CustomText(
      {required this.text,
      this.fontsize = 15,
      this.color = Colors.black,
      this.alignment = TextAlign.left});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
      ),
      textAlign: alignment,
    );
  }
}
