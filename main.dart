import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Homepage(),
      ),
  ));
}