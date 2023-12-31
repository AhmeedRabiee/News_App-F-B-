import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:newsapp_f/SplashScreen.dart';
import 'package:newsapp_f/services/news.dart';
import 'SplashScreen.dart';
import 'FirstScreen.dart';
import 'Signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/FirstScreen': (context) => FirstScreen(),
        '/Signin': (context) => Signin(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
