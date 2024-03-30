// ignore_for_file: dead_code

import 'package:class_1/pages/Login_page.dart';
import 'package:class_1/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        initialRoute: '.login',
        routes:{
      '/': (context) =>  SignUp(),
          '/login':(context)=> Login(),
          '/signUp': (context)=> SignUp(),
        }
    );
  }
}
