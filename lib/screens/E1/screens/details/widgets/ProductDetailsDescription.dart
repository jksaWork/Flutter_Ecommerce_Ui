import 'package:e_commerce/screens/E1/screens/Helpers/E1Button.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

import '../../../../../models/Produxt.dart';

class ProductDetailsDescription extends StatelessWidget {
  Product product;
  ProductDetailsDescription({Key? key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 30,
        left: 10,
        bottom: 70,
      ),
      margin: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70), topRight: Radius.circular(70))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(product.title, style: Theme.of(context).textTheme.headline6),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Icon(
              Icons.heart_broken,
              color: Colors.red,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 50, left: 10, top: 10),
          child: Text(
            product.description,
            style: TextStyle(fontSize: 13),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                'Read More Description...',
                style: TextStyle(color: E1primaryColor),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: E1primaryColor,
                size: 13,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
          child: SubmitButton('Add To Cart', () {}),
        )
      ]),
    );
  }
}

Container GetCircleShpae() {
  return Container(
    child: Row(
      children: [
        Container(
            width: 30,
            height: 30,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
      ],
    ),
  );
}
