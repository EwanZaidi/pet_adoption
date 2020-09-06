import 'package:flutter/material.dart';
import 'package:pets_adoption/constant/constant.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Cats",
    "Dogs",
    "Parrots",
    "Bunnies",
    "Fish",
    "Horses"
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.05,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return buildCategory(index, context);
          }),
    );
  }

  Widget buildCategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Column(
          children: [
            Text(categories[index],
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white)),
            SizedBox(height: kDefaultPadding / 4),
            Container(
              height: 3,
              width: 10,
              color:
                  _selectedIndex == index ? Colors.white : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
