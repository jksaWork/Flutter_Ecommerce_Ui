import 'package:flutter/material.dart';

class E1Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  const E1Button({Key? key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SubmitButton(text, onPressed);
  }
}

SizedBox SubmitButton(String text, Function onPressed) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
        )),
  );
}
