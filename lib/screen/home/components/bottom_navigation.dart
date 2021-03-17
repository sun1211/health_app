import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyBottonNav extends StatefulWidget {
  const MyBottonNav({Key key}) : super(key: key);

  @override
  _MyBottonNavState createState() => _MyBottonNavState();
}

class _MyBottonNavState extends State<MyBottonNav> {
  int activeIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: activeIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(LineAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineAwesomeIcons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineAwesomeIcons.gratipay),
          label: 'Votes',
        ),
      ],
    );
  }
}
