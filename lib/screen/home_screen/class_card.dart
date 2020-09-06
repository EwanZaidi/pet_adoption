import 'package:flutter/material.dart';
import 'package:pets_adoption/constant/constant.dart';
import 'package:pets_adoption/model/cat_model.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    Key key,
    @required this.cat,
  }) : super(key: key);

  final Cats cat;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.25,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.23))
              ],
            ),
            height: size.height * 0.2,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          cat.name,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kTextColor.withOpacity(0.8)),
                        ),
                        Icon(Icons.message, color: kPrimaryColor, size: 22),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(cat.kind,
                        style: TextStyle(
                            fontSize: 15, color: kTextColor.withOpacity(0.8))),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(cat.age + ' years old',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.9))),
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: kPrimaryColor, size: 18),
                        SizedBox(width: 8),
                        Text(
                          "Distance: " + cat.distance,
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: size.width / 2.15,
            height: size.height * 0.25,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.black.withOpacity(0.23))
                ],
                color: cat.color,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(cat.image), fit: BoxFit.contain)),
          ),
        ],
      ),
    );
  }
}