import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

ThemeData CustomThemeData() {
  return ThemeData(
    primaryColor: E1primaryColor,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: E1primaryColor),
    ),
    inputDecorationTheme: CustomInputDecoration(),
  );
}

InputDecorationTheme CustomInputDecoration() {
  return InputDecorationTheme(
    // label: Text('Email'),
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey),
      gapPadding: 20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey),
      gapPadding: 20,
    ),
  );
}
