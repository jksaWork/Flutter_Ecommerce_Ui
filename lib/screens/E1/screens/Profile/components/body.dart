import 'package:e_commerce/screens/E1/screens/Profile/components/profile_image.dart';
import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
          SizedBox(height: 20),
          ProfileImage(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                getListItem('assets/icons/User Icon.svg', 'My Account'),
                getListItem('assets/icons/Bell.svg', 'Notification'),
                getListItem('assets/icons/Settings.svg', 'Setting'),
                getListItem('assets/icons/Question mark.svg', 'Help'),
                getListItem('assets/icons/Log out.svg', 'Log Out'),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Container getListItem(String icon, String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      // height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(.1)),
      child: Row(children: [
        SvgPicture.asset(
          icon,
          width: 22,
          color: E1primaryColor,
        ),
        SizedBox(width: 20),
        Text(
          name,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios),
      ]),
    );
  }
}
