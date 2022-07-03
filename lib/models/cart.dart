import 'package:e_commerce/models/Produxt.dart';

class Cart {
  Product product;
  int num;
  Cart({required this.product, required this.num});
}

List<Cart> CartItem = [
  Cart(product: demoProducts[0], num: 2),
  Cart(product: demoProducts[1], num: 1),
  Cart(product: demoProducts[2], num: 3),
  Cart(product: demoProducts[3], num: 1),
];
