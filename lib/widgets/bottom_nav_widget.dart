import 'package:ethiocart/Screens/featured.dart';
import 'package:ethiocart/Screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return Container(child: BottomNav());
  }

  int _selectedIndex = 0;
  int currentIndex = 0;
  final List<Widget> _children = [];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    featured(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      setState(() {
        _selectedIndex = index;
      });
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget BottomNav() {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home,
                size: 20, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.compass, size: 20, color: Colors.black),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart, size: 20, color: Colors.black),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.book,
                size: 20, color: Colors.black),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,
                size: 20, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
