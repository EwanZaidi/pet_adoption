import 'package:flutter/material.dart';
import 'package:pets_adoption/constant/constant.dart';
import 'package:pets_adoption/screen/home_screen/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Column(children: [
        Text("Location",
            style: TextStyle(color: kTextColor.withOpacity(0.5))),
        SizedBox(height: kDefaultPadding / 4),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.location_on, color: kPrimaryColor),
          SizedBox(width: kDefaultPadding / 4),
          Text("Labuan, ",
              style: TextStyle(color: kTextColor.withOpacity(0.8))),
          Text("Malaysia",
              style: TextStyle(color: kTextColor.withOpacity(0.5))),
        ])
      ]),
      leading: Icon(Icons.menu, color: Colors.black),
      actions: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
