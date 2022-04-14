import 'package:carousel_slider/carousel_slider.dart';
import 'package:loginpage/Carousel_Slider.dart';
import 'package:loginpage/ListProduct/Categories_list.dart';
import 'package:loginpage/ListProduct/ListProduct_screen.dart';
import 'package:loginpage/ListProduct/ListProduct_screen2.dart';
import 'package:loginpage/LoginPage/LoginScreen.dart';
import 'ListProduct/Categoriestest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: listProduct2(),
    );
  }
}
