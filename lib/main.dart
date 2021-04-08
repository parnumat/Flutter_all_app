import 'package:flutter/material.dart';
import 'package:patrick_app/main/main_constants.dart';
import 'package:patrick_app/main/pages/aboutMe/about_me.dart';
import 'package:patrick_app/main/pages/allApp/all_app.dart';
import 'package:patrick_app/main/pages/contactMe/contact_me.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> tabs = [AboutMe(), AllApp(), ContactMe()];

  AnimationController _controllerH;
  // bool isPlaying = false;
  @override
  void initState() {
    super.initState();
    _controllerH =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patrick',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: mFifthColor,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, size: 20),
              activeIcon: Icon(Icons.person),
              label: "About",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on, size: 20),
              activeIcon: Icon(Icons.apps),
              label: "App",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined, size: 20),
              activeIcon: Icon(Icons.contacts),
              label: "Contact",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              index == 0 ? _controllerH.forward() : _controllerH.reverse();
            });
          },
        ),
      ),
    );
  }
}
