import 'package:flutter/material.dart';

Container GetErrorsFeedBacks(List errors) {
  return Container(
    child: Column(
      children: errors.map((i) {
        return ErrorFeadback(i);
      }).toList(),
    ),
  );
}

Row ErrorFeadback(message) {
  return Row(
    children: [
      Text(
        message,
        style: TextStyle(color: Colors.red),
      ),
    ],
  );
}
