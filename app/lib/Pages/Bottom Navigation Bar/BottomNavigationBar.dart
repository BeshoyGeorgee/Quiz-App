import 'package:flutter/material.dart';
import 'package:quiz_app/Pages/First%20page/first_page.dart';
import 'package:quiz_app/Pages/Second%20page/second_page.dart';
import 'package:quiz_app/Pages/Third%20page/third_page.dart';

class MyTabs extends StatefulWidget {
  static String routeName = "bottomNavigationBar";
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  int currentIndex = 0;

  final List<Widget> tabs = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '●',
          ),
        ],
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),
        backgroundColor: Colors.white,
        iconSize: 24,
      ),
    );
  }
}