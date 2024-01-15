import 'package:fashion_ui/pages/home.dart/home.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

List<Widget> pages = [const HomePages()];
int _currentIndex = 0;

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0B0C),
      body: pages[_currentIndex],
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade900,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedFontSize: 0,
          iconSize: 30,
          enableFeedback: true,
          unselectedFontSize: 0,
          onTap: (index) {
            if (index <= 1) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          selectedItemColor: const Color(0xffb2ee32),
          unselectedItemColor: const Color(0xffD2D2d3).withOpacity(0.8),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.space_dashboard_rounded,
                ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ]),
    );
  }
}
