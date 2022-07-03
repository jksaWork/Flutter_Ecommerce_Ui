import 'package:e_commerce/screens/E1/screens/Profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: ProfileBody(),
      bottomNavigationBar: Container(
        // height: 30,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 1,
            color: Colors.grey,
          )
        ]),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset('assets/icons/Settings.svg', width: 25)),
            IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg',
                    width: 25)),
            IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  width: 25,
                )),
            IconButton(
                onPressed: () => null,
                icon:
                    SvgPicture.asset('assets/icons/User Icon.svg', width: 25)),
          ],
        ),
      ),
    );
  }
}
