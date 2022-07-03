import 'package:e_commerce/models/Produxt.dart';
import 'package:e_commerce/screens/E1/screens/details/widgets/ImagePreview.dart';
import 'package:e_commerce/screens/E1/screens/details/widgets/ProductDetailsDescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetiasl extends StatelessWidget {
  static String routeName = '/product_details';
  const ProductDetiasl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ProdcutDetailsArgemnt;
    print(args.product);
    return Scaffold(
      backgroundColor: Color(0xFFF4f6f9),
      body: Container(
          child: SingleChildScrollView(
        child: Column(children: [
          CustomAppBarProductDetails(context, 3.5),
          ImagePreview(
            product: args.product,
          ),
          ProductDetailsDescription(
            product: args.product,
          ),
        ]),
      )),
    );
  }
}

CustomAppBarProductDetails(context, rating) {
  return SafeArea(
      child: Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back_ios,
                size: 23,
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Row(
            children: [
              Text(rating.toString()),
              SizedBox(width: 5),
              // .asset(),
              SvgPicture.asset('assets/icons/Star Icon.svg'),
            ],
          ),
        )
      ],
    ),
  ));
}

class ProdcutDetailsArgemnt {
  Product product;
  ProdcutDetailsArgemnt({required this.product});
}
