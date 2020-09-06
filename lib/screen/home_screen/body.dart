import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pets_adoption/constant/constant.dart';
import 'package:pets_adoption/constant/search_box.dart';
import 'package:pets_adoption/model/cat_model.dart';
import 'package:pets_adoption/screen/home_screen/categories.dart';
import 'package:pets_adoption/screen/home_screen/class_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 1.5),
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 1.5),
          SearchBox(),
          SizedBox(height: kDefaultPadding * 1.5),
          Categories(),
          SizedBox(height: kDefaultPadding * 1.5),
          SingleChildScrollView(
            child: Column(
              children: [
                CatCard(cat: cats[0]),
                CatCard(cat: cats[1]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
