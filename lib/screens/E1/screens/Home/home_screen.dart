import 'package:e_commerce/screens/E1/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

import 'widgets/HomeScreen.dart';

class Home extends StatelessWidget {
  static String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 25),
            AppBarWithSearch(),
            HomeScreenBody(),
          ],
        ),
      )),
    );
  }
}

class AppBarWithSearch extends StatefulWidget {
  AppBarWithSearch({Key? key}) : super(key: key);

  @override
  State<AppBarWithSearch> createState() => _AppBarWithSearchState();
}

class _AppBarWithSearchState extends State<AppBarWithSearch> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: width * .6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(.15),
          ),
          child: TextFormField(
              decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            // focuedBordefr: OutlineInputBorder(borderSide: BorderSide.none),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          )),
        ),
        GetStackButton(Icons.notifications_active, 5),
        GetStackButton(Icons.add_shopping_cart, 3),
      ]),
    );
  }

  GestureDetector GetStackButton(icon, int Count) {
    return GestureDetector(
      onTap: () {
        print('tapped');
        Navigator.pushNamed(context, CartScreen.routeName);
      },
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.15), shape: BoxShape.circle),
            child: Icon(icon),
          ),
          if (Count != null)
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 20,
                height: 20,
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Text(
                  '$Count',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

Container CopunSection() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Color(0xFF4A3298).withOpacity(.9),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'A Summer Suprized..',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Text(
                  'CallBack 20%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ],
    ),
  );
}
