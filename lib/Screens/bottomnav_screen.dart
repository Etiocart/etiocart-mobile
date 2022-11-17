import 'package:ethiocart/Screens/favorites_screen.dart';
import 'package:ethiocart/Screens/home_full_page.dart';
import 'package:ethiocart/Screens/fogot_password_screen.dart';
import 'package:ethiocart/Screens/notification_screen.dart';
import 'package:ethiocart/Screens/register.dart';
import 'package:ethiocart/Screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

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
      style: TextStyle(color: Colors.blue),
    ),

    notifications(),
    favoritesHome(),
    tickets(),
    // notifications(),
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
            icon: Icon(FlatIcons.home, size: 30, color: Colors.black45),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FlatIcons.compass, size: 30, color: Colors.black45),
            label: 'Explore',backgroundColor: Colors.indigo
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart, size: 30, color: Colors.black45),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.book, size: 30, color: Colors.black45),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30, color: Colors.black45),
            label: 'featured',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
