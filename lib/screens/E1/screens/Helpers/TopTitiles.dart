import 'package:flutter/material.dart';

import '../../../../Helpers/CustomText.dart';

class getTopTitles extends StatelessWidget {
  final String mainTitle, secondaryText;

  const getTopTitles({
    Key? key,
    required this.mainTitle,
    required this.secondaryText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Center(
          child: Text(
            mainTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomText(
                fontsize: 12,
                color: Colors.grey,
                alignment: TextAlign.center,
                text: secondaryText,
              )),
        ),
      ]),
    );
  }
}
