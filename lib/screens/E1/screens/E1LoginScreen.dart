import 'dart:ffi';

import 'package:e_commerce/Helpers/CustomText.dart';
import 'package:e_commerce/Helpers/HandelHttp.dart';
import 'package:e_commerce/screens/E1/screens/E1Register.dart';
import 'package:e_commerce/screens/E1/screens/Home/home_screen.dart';
import 'package:e_commerce/screens/E1/screens/forgetPassword.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

import 'Helpers/GetErrorsFeedback.dart';

class E1LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  // final ;
  // handel =  HandelHttp;

  @override
  // void initState() async {
  //   await singUp();
  // }

  const E1LoginScreen({Key? key}) : super(key: key);
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
          Center(
            child: Text(
              'Welecom Back',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * .8,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CustomText(
                    fontsize: 12,
                    color: Colors.grey,
                    alignment: TextAlign.center,
                    text:
                        "Nulla eleifend massa ut   Donec tempus justo quis nunc rutrum mollis")),
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
    singUp() async {
      HandelHttp _handel = HandelHttp();
      _handel.getRequest('https://jsonplaceholder.typicode.com/users');
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          key: _form_key,
          child: Column(
            children: [
              SizedBox(height: 20),
              getEmialFiled(errors),
              SizedBox(height: 20),
              getTexetFiled(errors),
              RemmberSections(),
              GetErrorsFeedBacks(errors),
              SizedBox(height: 20),
              SubmitButton(_form_key),
              SizedBox(height: MediaQuery.of(context).size.height * .07),
              SoicalLinkes(),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'You Did Not Have Acount ? '),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, E1RegisterPage.routeName),
                      child: CustomText(
                        text: 'Sign Up',
                        color: E1primaryColor,
                      ),
                    )
                  ],
                ),
              )
            ],
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
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, ForgerPassword.routeName),
          child: CustomText(
            text: 'Forget Password',
            color: E1primaryColor,
            fontsize: 13,
          ),
        )
      ]),
    );
  }

  SizedBox SubmitButton(GlobalKey<FormState> _form_key) {
    var lodding = false;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: lodding
                ? Text(
                    'Continue',
                    textAlign: TextAlign.center,
                  )
                : Center(
                    child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(),
                  )),
          ),
          onPressed: () {
            setState(() {
              lodding = true;
            });
            // await singUp();
            HandelHttp _handel = HandelHttp();
            Map data = {
              'username': 'mohammed1234',
              'password': '123456',
              'message_token': '213',
              'device_name': '12',
            };
            _handel.postRequest(
                'https://wasel.gulfsmo.net/api/drivers/login', data);

            if (_form_key.currentState!.validate()) {
              _form_key.currentState?.save();
              Navigator.pushNamed(context, Home.routeName);
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
