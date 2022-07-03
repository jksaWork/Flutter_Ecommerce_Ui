import 'package:e_commerce/Helpers/CustomText.dart';
import 'package:e_commerce/screens/E1/screens/Helpers/E1Button.dart';
import 'package:e_commerce/screens/E1/screens/Helpers/TopTitiles.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  static String routeName = '/Otp';
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomText(text: 'Verfiy  Account', color: Colors.grey),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: OtpBody(),
    );
  }
}

class OtpBody extends StatefulWidget {
  OtpBody({Key? key}) : super(key: key);

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .90,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            child: Column(children: [
              getTopTitles(
                  mainTitle: 'Verify Your Account',
                  secondaryText: 'We Have Send Code To Verfiy Your Account'),
              getTimer(),
            ]),
          ),
          OtpForm(),
          SubmitButton('continue', () {
            print('cliecked');
          }),
          Text(
            'Re Send The Otp',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ]),
      ),
    );
  }

  TweenAnimationBuilder getTimer() {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30.0, end: 0),
      duration: Duration(seconds: 30),
      builder: (context, value, child) {
        String st = value.toString().split('.')[0];
        return Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            '${st}',
            style: TextStyle(color: E1primaryColor, fontSize: 30),
          ),
        );
      },
      onEnd: () {
        print('ended');
      },
    );
  }
}

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? filed1;
  FocusNode? filed2;
  FocusNode? filed3;
  FocusNode? filed4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filed1 = FocusNode();
    filed2 = FocusNode();
    filed3 = FocusNode();
    filed4 = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    filed1!.dispose();
    filed2!.dispose();
    filed3!.dispose();
    filed4!.dispose();
  }

  nextfiled(String value, FocusNode? next) {
    print(value);
    if (value.length > 0) {
      next!.requestFocus();
      print('inside if');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getBox(filed1, (val) {
            nextfiled(val, filed2);
          }),
          getBox(filed2, (val) {
            nextfiled(val, filed3);
          }),
          getBox(filed3, (val) {
            nextfiled(val, filed4);
          }),
          getBox(filed4, (val) {
            filed4!.unfocus();
          }),
        ],
      ),
    );
  }

  Container getBox(FocusNode? focu, Function next) {
    return Container(
      width: 60,
      child: TextFormField(
        focusNode: focu,
        onChanged: ((value) => next(value)),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(width: 1),
          ),
        ),
      ),
    );
  }
}
