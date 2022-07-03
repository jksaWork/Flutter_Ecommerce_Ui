import 'package:e_commerce/models/Produxt.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  // double? varwidth;
  Product product;
  GestureTapCallback press;
  ProductItem({
    Key? key,
    required this.product,
    required this.press,
    // this.varwidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: PupularProductItem(
          100, product.images[0], product.title, product.price),
    );
  }
}

Container PupularProductItem(
    double varwidth, String image, String desc, double price) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Container(
        width: varwidth,
        child: Column(
          children: [
            SizedBox(
              width: 100,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(image)),
              ),
            ),
            SizedBox(height: 3),
            Text(
              desc,
              maxLines: 2,
            ),
            SizedBox(height: 3),
            Container(
              width: 100,
              decoration: BoxDecoration(
                  // border: Border.all(),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('\$$price',
                      style: TextStyle(
                        color: E1primaryColor,
                        fontSize: 15,
                      )),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                      size: 15,
                    ),
                  )
                ],
              ),
            )
          ],
        )),
  );
}
