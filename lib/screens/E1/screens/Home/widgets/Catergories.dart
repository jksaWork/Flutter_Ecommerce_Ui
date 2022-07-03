import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GetIconsBox(context, 'Plastations', Icons.pages),
          GetIconsBox(context, 'Brands', Icons.kebab_dining),
          GetIconsBox(context, 'Shirt', Icons.icecream),
          GetIconsBox(context, 'Shirt', Icons.wallet_giftcard_sharp),
        ],
      ),
    );
  }

  Container GetIconsBox(BuildContext context, String text, icon) {
    return Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
        width: MediaQuery.of(context).size.width * .17,
        height: MediaQuery.of(context).size.width * .17,
        decoration: BoxDecoration(
            color: E1primaryColor.withOpacity(.1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Icon(
            icon,
            color: E1primaryColor,
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 12),
      ),
    ]));
  }
}
