import 'package:e_commerce/Helpers/HandelHttp.dart';
import 'package:e_commerce/Helpers/snakbar.dart';
import 'package:e_commerce/screens/E1/main.dart';
import 'package:e_commerce/screens/E1/screens/E1Register.dart';
import 'package:e_commerce/screens/E1/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class APiLoginPage extends StatefulWidget {
  static String routeName = '/api_login';
  const APiLoginPage({Key? key}) : super(key: key);

  @override
  State<APiLoginPage> createState() => _APiLoginPageState();
}

class _APiLoginPageState extends State<APiLoginPage> {
  var isloadding = false;
  HandelHttp handel = HandelHttp();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _form_key = GlobalKey<FormState>();

    // Controller usernameController = Edittext();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    Future Login() async {
      var condtion = _form_key.currentState!.validate();
      print(condtion);
      setState(() {
        isloadding = !isloadding;
      });
      if (condtion) //vaidated from
      {
        Map data = {
          'username': usernameController.text,
          'password': passController.text,
          'message_token': 'jksaaltigani',
        };
        String url = 'https://wasel.gulfsmo.net/api/drivers/login';
        var res = await handel.postRequest(url, data);
        print(res);
        print(res['status']);
        print(res['message']);
        if (!res['status']) {
          setState(() {
            isloadding = !isloadding;
          });
          AddSnakBar(context, 'jksa atigain');
        } else {
          print('jksa altigani osman');
          print(res);
          // prefes  .setString('token', 'jksa altinai');
          Navigator.pushNamed(context, Home.routeName);
        }
        //
      } else {
        // SnackBar()
        print('snakbar on');
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Form(
              key: _form_key,
              child: Column(
                children: [
                  getTextFiled(usernameController),
                  TextFormField(
                    validator: (val) {
                      if (val.toString().length == 0) return 'this is empty';
                    },
                    decoration: InputDecoration(
                      label: Text('name'),
                    ),
                    controller: passController,
                  ),
                  TextButton(
                      onPressed: () async {
                        await Login();
                      },
                      child: !isloadding
                          ? Text('Login')
                          : Container(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(),
                            )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField getTextFiled(TextEditingController usernameController) {
    return TextFormField(
      controller: usernameController,
      validator: (val) {
        if (val.toString().length == 0) return 'this is empty';
      },
      decoration: InputDecoration(
        label: Text('name'),
      ),
    );
  }
}
