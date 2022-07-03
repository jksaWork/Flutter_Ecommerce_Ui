import 'package:e_commerce/screens/E1/screens/APis/APIgetPhoto.dart';
import 'package:e_commerce/screens/E1/screens/APis/ApiLoginPage.dart';
import 'package:e_commerce/screens/E1/screens/ContinueRegister.dart';
import 'package:e_commerce/screens/E1/screens/E1LoginScreen.dart';
import 'package:e_commerce/screens/E1/screens/E1Register.dart';
import 'package:e_commerce/screens/E1/screens/Home/home_screen.dart';
import 'package:e_commerce/screens/E1/screens/Otp.dart';
import 'package:e_commerce/screens/E1/screens/Profile/Profile_screen.dart';
import 'package:e_commerce/screens/E1/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/E1/screens/details/product_details.dart';
import 'package:e_commerce/screens/E1/screens/forgetPassword.dart';
import 'package:e_commerce/screens/E1/screens/login_succeffuly.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  E1LoginScreen.routeName: (context) => const E1LoginScreen(),
  ForgerPassword.routeName: (context) => const ForgerPassword(),
  LoginSuccessfuly.routeName: (context) => const LoginSuccessfuly(),
  E1RegisterPage.routeName: (context) => const E1RegisterPage(),
  ContinueRegister.routeName: (context) => const ContinueRegister(),
  Otp.routeName: (context) => const Otp(),
  Home.routeName: (context) => const Home(),
  ProductDetiasl.routeName: (context) => const ProductDetiasl(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  APiLoginPage.routeName: (context) => const APiLoginPage(),
  AppNoteHome.routeName: (context) => const AppNoteHome(),
};
