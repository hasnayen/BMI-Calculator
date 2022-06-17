import 'package:flutter/material.dart';
import 'package:flutter_navigation_batch05/pages/home_page.dart';
import 'package:flutter_navigation_batch05/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routName,
      routes: {
        HomePage.routName:(context) => HomePage(),
        SecondPage.routName:(context) => SecondPage(),
      },
    );
  }
}

