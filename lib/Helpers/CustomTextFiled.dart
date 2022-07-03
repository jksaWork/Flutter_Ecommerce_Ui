import 'package:e_commerce/Helpers/CustomText.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  String lable;
  String hint;
  bool password;
  var validator;
  final Function onSave;
  final Function validato;
  CustomTextFiled({
    Key? key,
    required this.lable,
    required this.hint,
    this.password = false,
    required this.onSave,
    required this.validato,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(text: lable),
        TextFormField(
          obscureText: password,
          decoration: InputDecoration(
              hintText: hint,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 2))),
        )
      ]),
    );
  }
}
