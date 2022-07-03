import 'package:flutter/material.dart';

void AddSnakBar(context, String message) {
  const snackBar = SnackBar(
    content: Text('Some Thing Went Worng'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
