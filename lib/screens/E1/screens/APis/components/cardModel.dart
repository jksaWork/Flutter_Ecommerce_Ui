import 'package:e_commerce/models/JsnoPlaceholder.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final jsonPlaceHolderModel;
  const ProductCard({Key? key, this.jsonPlaceHolderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(jsonPlaceHolderModel['title']);
    return productCardBulider(jsonPlaceHolderModel);
  }
}

Card productCardBulider(JsonPlaceHolderModel img) {
  return Card(
      child: Container(
    padding: EdgeInsets.all(10),
    child: ListTile(
      title: Text(img.title ?? '-'),
      leading: Image(image: NetworkImage(img.url ?? '-')),
    ),
  ));
}
