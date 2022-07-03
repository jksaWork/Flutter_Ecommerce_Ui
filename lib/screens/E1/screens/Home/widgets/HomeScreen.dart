import 'package:e_commerce/Helpers/CustomText.dart';
import 'package:e_commerce/models/Produxt.dart';
import 'package:e_commerce/screens/E1/screens/Home/home_screen.dart';
import 'package:e_commerce/screens/E1/screens/Home/widgets/ProductItem.dart';
import 'package:e_commerce/screens/E1/screens/details/product_details.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import 'Catergories.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var link1 =
        'https://www.marketingdonut.co.uk/sites/default/files/styles/landing_pages_lists_250/public/branding_overview_371705137.jpg?itok=8HOKUeq6';
    double price = 12;
    double varwidth = 200;
    String image = demoProducts[0].images[0], desc = 'jksa altignai \n omnsa';
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          CopunSection(),
          Categories(),
          // sliderBulider(context, link1),
          Container(
            // padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              // controller:
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      demoProducts.length,
                      (index) => ProductItem(
                          product: demoProducts[index],
                          press: () => Navigator.pushNamed(
                              context, ProductDetiasl.routeName,
                              arguments: ProdcutDetailsArgemnt(
                                  product: demoProducts[index]))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container PupularProductItem(
      double varwidth, String image, String desc, double price) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
          // width: varwidth ? ,
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
          Text(desc),
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

  Container sliderBulider(BuildContext context, String link1) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomHead(),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // controller: controller,
              child: Row(
                children: [
                  SpecialForYouItem(context, link1),
                  SpecialForYouItem(context, link1)
                ],
              ),
            ),
          ],
        ));
  }

  Row CustomHead() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Special For You',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        CustomText(
          text: 'See more',
          fontsize: 10,
          color: Colors.grey,
        ),
      ],
    );
  }

  Container SpecialForYouItem(BuildContext context, String link1) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .65,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(link1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .65,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.topRight, colors: [
                Colors.black.withOpacity(.5),
                Colors.black87.withOpacity(.7),
              ]),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width * .65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brands ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Brands With Tell You how Is Do About This',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  // textAlign: TextAlign.end,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
