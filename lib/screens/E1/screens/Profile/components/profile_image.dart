import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: ProfileImageBulider());
  }

  Container ProfileImageBulider() {
    return Container(
      height: 150,
      width: 150,
      child: Stack(children: [
        SizedBox(
          height: 150,
          width: 150,
          child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile Image.png')),
        ),
        Positioned(
          bottom: 0,
          right: -3,
          child: Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white)),
            child: Container(
              width: 30,
              child:
                  SvgPicture.asset('assets/icons/Camera Icon.svg', width: 30),
            ),
          ),
        )
      ]),
    );
  }
}
