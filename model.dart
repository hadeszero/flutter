import 'package:flutter/material.dart';

class Model {
  String name;
  String nameicon;
  String level;
  String tg;
  String calor;
  Color boxColor;
  bool colorview;

  Model({
    required this.name,
    required this.nameicon,
    required this.level,
    required this.tg,
    required this.calor,
    required this.colorview,
    required this.boxColor

  });

  static List<Model> getModels(){
    List<Model> Models=[];

    Models.add(
      Model(
        name: 'one',
        nameicon: 'assets/images/image4.png',
        level: 'easy',
        tg: '30mins',
        calor: 'REM',
        colorview: true,
        boxColor: Colors.blue.shade300)
    );
     Models.add(
      Model(
        name: 'one',
        nameicon: 'assets/images/image1.jpg',
        level: 'easy',
        tg: '30mins',
        calor: 'REM',
        colorview: true,
        boxColor: Colors.yellow.shade300)
    );
     Models.add(
      Model(
        name: 'one',
        nameicon: 'assets/images/image2.jpg',
        level: 'easy',
        tg: '30mins',
        calor: 'REM',
        colorview: false,
        boxColor: Colors.black12)
    );
     Models.add(
      Model(
        name: 'one',
        nameicon: 'assets/images/image3.jpg',
        level: 'easy',
        tg: '30mins',
        calor: 'REM',
        colorview: true,
        boxColor: Colors.pink.shade400)
    );
    return Models;

  }
}