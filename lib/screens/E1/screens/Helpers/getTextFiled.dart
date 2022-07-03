import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

Container SoicalLinkes() {
  return Container(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icons.facebook, Icons.whatsapp, Icons.linked_camera_outlined]
            .map((e) => Container(
                  padding: EdgeInsets.all(5),
                  child: IconTheme(
                    data: IconThemeData(color: E1primaryColor),
                    child: Icon(e),
                  ),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                ))
            .toList()),
  );
}
