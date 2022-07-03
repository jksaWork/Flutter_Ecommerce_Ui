import 'package:e_commerce/screens/E1/screens/Helpers/E1Button.dart';
import 'package:e_commerce/screens/E1/screens/Helpers/GetErrorsFeedback.dart';
import 'package:e_commerce/screens/E1/screens/Helpers/getTextFiled.dart';
import 'package:e_commerce/screens/E1/screens/Otp.dart';
import 'package:flutter/material.dart';

import '../../../Helpers/CustomText.dart';
import 'Helpers/TopTitiles.dart';

class ContinueRegister extends StatelessWidget {
  static String routeName = '/register_step2';
  const ContinueRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomText(text: 'Sign Up', color: Colors.grey),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: RegisterBody(),
    );
  }
}

Widget RegisterBody() {
  return Container(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          getTopTitles(
              mainTitle: 'Completed Profile',
              secondaryText:
                  'Hello You Are Welcome You can create New Account '),
          RegisterForm(),
        ],
      ),
    ),
  );
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  List errors = [];
  @override
  Widget build(BuildContext context) {
    String password = '',
        email = '',
        hint = 'Type A Password',
        lable = 'Password';
    var icon = Icons.key, _fomr_key = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _fomr_key,
        child: Column(children: [
          getFiled(email, errors, 'First Name', Icons.verified_user,
              'Type Your First name', "First Name Is Empty"),
          SizedBox(height: 30),
          getFiled(email, errors, 'Last Name', Icons.verified_user,
              'Type Your Last name', "Last name Name Is Empty"),
          SizedBox(height: 30),
          getFiled(password, errors, "Phone Number", Icons.phone,
              "Type Your Phone Number", "Phone Number Is Empty"),
          SizedBox(height: 30),
          getFiled(password, errors, ' Address', Icons.add_reaction,
              "Type The Address", 'Address Is Empty'),
          SizedBox(height: 30),
          errors.length > 0 ? (GetErrorsFeedBacks(errors)) : Text(''),
          SubmitButton('continue', () {
            if (_fomr_key.currentState!.validate()) {
              _fomr_key.currentState?.save();
              Navigator.pushNamed(context, Otp.routeName);
            }
            print('validate');
            print(errors);
          }),
          SizedBox(height: 30),
          SoicalLinkes()
        ]),
      ),
    );
  }

  TextFormField getFiled(String password, List<dynamic> errors, String lable,
      IconData icon, String hint, String? messaeg) {
    return TextFormField(
      obscureText: true,
      onSaved: (val) {
        setState(() {
          password = val.toString();
        });
      },
      validator: (value) {
        if (value.toString().isEmpty) {
          setState(() {
            errors.add(messaeg);
          });
        } else {
          setState(() {
            errors.remove(messaeg);
          });
        }
      },
      decoration: InputDecoration(
          label: Text(lable),
          suffixIcon: Icon(icon),
          suffixIconColor: Colors.grey,
          focusColor: Colors.grey,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint),
    );
  }
}
