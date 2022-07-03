import 'package:e_commerce/screens/E1/Theme.dart';
import 'package:e_commerce/screens/E1/routes.dart';
import 'package:e_commerce/screens/E1/screens/APis/APIgetPhoto.dart';
import 'package:e_commerce/screens/E1/screens/APis/ApiLoginPage.dart';
import 'package:e_commerce/screens/E1/screens/E1LoginScreen.dart';
import 'package:e_commerce/screens/E1/screens/Home/home_screen.dart';
import 'package:e_commerce/screens/E1/screens/Profile/Profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// late ;
void E1() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: CustomThemeData(),
    home: E1LoginScreen(),
    initialRoute: true ? AppNoteHome.routeName : APiLoginPage.routeName,
    routes: routes,
  ));
}
