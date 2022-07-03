import 'package:e_commerce/screens/E1/screens/Helpers/E1Button.dart';
import 'package:flutter/material.dart';

class LoginSuccessfuly extends StatelessWidget {
  static String routeName = '/login_sccuessful';
  const LoginSuccessfuly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScuessfulyBody(context),
    );
  }

  Widget ScuessfulyBody(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset('assets/images/success.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Login Success',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    E1Button(text: 'Go To Home', onPressed: () {}),
                  ]),
            )
          ]),
    );
  }
}
