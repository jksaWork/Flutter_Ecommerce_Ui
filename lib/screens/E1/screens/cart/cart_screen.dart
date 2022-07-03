import 'package:e_commerce/models/Produxt.dart';
import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/screens/E1/screens/Helpers/E1Button.dart';
import 'package:e_commerce/screens/E1/screens/cart/widgets/cart_body.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int qu = 3;
    Product product = demoProducts[0];
    return Scaffold(
      appBar: CartAppBar(context),
      body: CartBody(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 10,
                color: Colors.grey,
              )
            ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(.3),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Container(
                  child: Row(
                    children: [
                      Text('Add Pruches Code .'),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ],
                  ),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(text: 'total\n'),
                    TextSpan(
                        text: '\$513.123',
                        style: TextStyle(
                            color: E1primaryColor,
                            fontWeight: FontWeight.bold)),
                  ])),
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: SubmitButton('Check ', () {}),
                  )
                ],
              )
            ]),
      ),
    );
  }

  AppBar CartAppBar(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Check Out',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '${CartItem.length} Items',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ));
  }
}
