import 'package:flutter/material.dart';
import 'package:login_with_validation/grid.dart';
import 'package:login_with_validation/home.dart';
import 'package:login_with_validation/list.dart';
import 'package:login_with_validation/login.dart';
import 'package:login_with_validation/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
        // initialRoute: "/signUp",
        routes: {
          "/list": (context) => List(),
          "/login": (context) => LoginPage(),
          "/signUp": (context) => SignUpPage(),
          "/grid": (context) => Grid()
        });
  }
}
