import 'package:e_commerce/models/Produxt.dart';
import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class CartBody extends StatefulWidget {
  CartBody({Key? key}) : super(key: key);
  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return CartBodyFun();
  }

  Container CartBodyFun() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            height: 1000,
            // controller: controller,
            child: ListView.builder(
              itemCount: CartItem.length,
              itemBuilder: (context, index) => CardItem(
                  context, CartItem[index].product, CartItem[index].num, index),
            )),
      ),
    );
  }

  Container CardItem(BuildContext context, Product product, int qu, index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Dismissible(
        onDismissed: (__) {
          setState(() {
            CartItem.removeAt(index);
            print(CartItem);
          });
        },
        background: Container(
          decoration: BoxDecoration(
              color: Colors.red[200], borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Delete The Product',
                    style: TextStyle(color: Colors.red),
                  )),
              Container(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        key: Key(product.title),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * .3,
                child: AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset(product.images[0]),
                ),
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        demoProducts[0].title,
                        maxLines: 3,
                      ),
                      SizedBox(height: 10),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '\$${product.price}\t',
                            style: TextStyle(
                                color: E1primaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'x${qu}',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
