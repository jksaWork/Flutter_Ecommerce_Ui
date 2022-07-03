import 'package:e_commerce/Helpers/CustomText.dart';
import 'package:e_commerce/screens/E1/screens/E1LoginScreen.dart';
import 'package:e_commerce/screens/E1/screens/forgetPassword.dart';
import 'package:e_commerce/screens/E1/screens/login_succeffuly.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

import 'Helpers/GetErrorsFeedback.dart';
import 'Helpers/TopTitiles.dart';

class ForgerPassword extends StatelessWidget {
  static String routeName = '/forget_passsword';
  const ForgerPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: CustomText(
          text: 'Sign Up',
          fontsize: 15,
          color: Colors.grey,
        ),
      )),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: ListView(children: [
          getTopTitles(
            mainTitle: 'Forget Passwd',
            secondaryText:
                "Nulla eleifend massa ut   Donec tempus justo quis nunc rutrum mollis",
          ),
          SizedBox(height: 40),
          SignInForm(),
        ]),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  List errors = [];
  bool? remeber = true;
  String? email, password;
  Widget build(BuildContext context) {
    final _form_key = new GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          key: _form_key,
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                getTexetFiled(errors),
                GetErrorsFeedBacks(errors),
                SubmitButton(_form_key),
                SizedBox(height: MediaQuery.of(context).size.height * .07),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: 'are You Have Acount?  '),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, E1LoginScreen.routeName),
                        child: CustomText(
                          text: 'Sign Up',
                          color: E1primaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Container SoicalLinkes() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              [Icons.facebook, Icons.whatsapp, Icons.linked_camera_outlined]
                  .map((e) => Container(
                        padding: EdgeInsets.all(5),
                        child: IconTheme(
                          data: IconThemeData(color: E1primaryColor),
                          child: Icon(e),
                        ),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                      ))
                  .toList()),
    );
  }

  Container RemmberSections() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(children: [
        Checkbox(
            value: remeber,
            onChanged: (value) {
              setState(() {
                remeber = value;
              });
            }),
        Text('Remeber Me'),
        Spacer(),
        CustomText(
          text: 'Forget Password',
          color: E1primaryColor,
          fontsize: 13,
        )
      ]),
    );
  }

  SizedBox SubmitButton(GlobalKey<FormState> _form_key) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Continue',
              textAlign: TextAlign.center,
            ),
          ),
          onPressed: () {
            if (_form_key.currentState!.validate()) {
              _form_key.currentState?.save();
              Navigator.pushNamed(context, LoginSuccessfuly.routeName);
            }
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          )),
    );
  }

  TextFormField getTexetFiled(List errors) {
    return TextFormField(
      obscureText: true,
      onSaved: (val) {
        setState(() {
          password = val;
        });
      },
      validator: (value) {
        if (value.toString().isEmpty) {
          setState(() {
            errors.add('Password  is empty');
          });
        } else {
          setState(() {
            errors.remove('Password  is empty');
          });
        }
      },
      decoration: InputDecoration(
          label: Text('password'),
          suffixIcon: Icon(Icons.key),
          suffixIconColor: Colors.grey,
          focusColor: Colors.grey,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: 'Type your Password'),
    );
  }

  TextFormField getEmialFiled(List errors) {
    return TextFormField(
      onSaved: (val) => setState(() => email = val),
      validator: (value) {
        if (value.toString().isEmpty) {
          setState(() {
            errors.add('Emial Must Be');
          });
        } else {
          setState(() {
            errors.remove('Emial Must Be');
          });
        }
      },
      decoration: InputDecoration(
        label: Text('Email'),
        hintText: "example@gmial.com",
        suffixIcon: Icon(Icons.mail),
        suffixIconColor: Colors.grey,
        focusColor: Colors.grey,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 20,
        ),
      ),
    );
  }
}
