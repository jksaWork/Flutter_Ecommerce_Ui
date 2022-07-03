import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  var color;
  CustomButton({required this.text, this.color = primaryColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primaryColor)),
        child: Container(
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
          padding: EdgeInsets.all(12),
        ),
        onPressed: () {
          print('jksa');
        },
      ),
    );
  }
}
