import 'package:flutter/material.dart';

class Category {
  String name;
  String nameicon;
  Color boxColor;
// ham khoi tao
  Category({
    required this.name,
    required this.nameicon,
    required this.boxColor,
});

 static List<Category> getCategory(){
    List<Category> Categories =[];

   Categories.add(
    Category(
      name: 'Cheese1',
      nameicon: 'assets/images/cheese.png',
      boxColor: Colors.blue.shade200)
   );
   Categories.add(
    Category(
      name: 'Cheese2',
      nameicon: 'assets/images/cheese.png',
      boxColor: Colors.yellow.shade300)
   );
   Categories.add(
    Category(
      name: 'Cheese3',
      nameicon: 'assets/images/cheese.png',
      boxColor: Colors.pink.shade200)
   );
   Categories.add(
    Category(
      name: 'Cheese4',
      nameicon: 'assets/images/cheese.png',
      boxColor: Colors.green.shade100)
   );


    return Categories;

  }
}
