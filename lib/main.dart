import 'package:flutter/material.dart';
import 'package:pets_adoption/constant/constant.dart';
import 'package:pets_adoption/screen/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: kPrimaryColor,
      backgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adoption Pets',
      theme: themeData,
      home: HomeScreen(),
    );
  }
}
