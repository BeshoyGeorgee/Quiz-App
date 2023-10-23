import 'package:flutter/material.dart';
import 'package:quiz_app/Pages/Bottom%20Navigation%20Bar/BottomNavigationBar.dart';
import 'package:quiz_app/Pages/First%20page/first_page.dart';
import 'package:quiz_app/Pages/Second%20page/second_page.dart';
import 'package:quiz_app/Pages/Third%20page/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialRoute: MyTabs.routeName,
      routes: {
        FirstPage.routeName : (context) => FirstPage(),
        SecondPage.routeName : (context) => SecondPage(),
        ThirdPage.routeName : (context) => ThirdPage(),
        MyTabs.routeName : (context) => MyTabs(),
      },

    );
  }
}


