import 'package:flutter/material.dart';
import 'package:learning_demo/pages/navPages/bar_item_page.dart';
import 'package:learning_demo/pages/navPages/home_page.dart';
import 'package:learning_demo/pages/navPages/my_page.dart';
import 'package:learning_demo/pages/navPages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          selectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
          ]),
    );
  }
}
