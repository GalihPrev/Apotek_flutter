import 'package:flutter/material.dart';
import 'package:loginpage/ListProduct/ListProduct_screen.dart';
import 'package:loginpage/LoginPage/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListProduct(),
    );
  }
}
