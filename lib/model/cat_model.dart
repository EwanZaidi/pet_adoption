import 'package:flutter/material.dart';

class Cats {
  String name;
  String gender;
  String image;
  String kind;
  String age;
  String distance;
  Color color;

  Cats(
      {this.name, this.gender, this.image, this.kind, this.age, this.distance, this.color});
}

List<Cats> cats = [
  Cats(
      name: 'Sumo',
      gender: 'male',
      image: 'assets/images/cat_1.png',
      kind: 'Persian cat',
      age: '1.5',
      color: Color(0xFFC6D0D4),
      distance: '30'),
  Cats(
      name: 'Simba',
      gender: 'male',
      image: 'assets/images/cat_2.png',
      kind: 'Persian cat',
      age: '3',
      color: Color(0xFFE9CDA3),
      distance: '17'),
];
