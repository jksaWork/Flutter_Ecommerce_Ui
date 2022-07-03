import 'package:e_commerce/Helpers/CustomTextFiled.dart';
import 'package:e_commerce/Helpers/CutstomButton.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

import '../../Helpers/CustomText.dart';

class LoginScree extends StatelessWidget {
  const LoginScree({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Welcome', fontsize: 20),
                CustomText(
                  text: 'Sign In',
                  color: primaryColor,
                ),
              ],
            ),
            SizedBox(height: 5),
            CustomText(
              text: 'Hello You Can Sign In Now',
              color: SecondaryColor,
              fontsize: 12,
            ),
            SizedBox(height: 30),
            CustomTextFiled(
              lable: 'Email',
              hint: "Type Your Email",
              validato: () {},
              onSave: () {},
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFiled(
              lable: 'Password',
              hint: "Type Your Password",
              password: true,
              validato: () {},
              onSave: () {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Forget Password ?',
              alignment: TextAlign.right,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(text: 'Login'),
            SizedBox(
              height: 40,
            ),
            Center(
              child: CustomText(text: '-OR-'),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Container(
                child: Row(
                  children: [
                    CustomButton(
                      text: 'Face Box',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      )),
    );
  }
}
