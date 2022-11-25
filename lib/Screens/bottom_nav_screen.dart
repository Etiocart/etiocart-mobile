import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens.dart';

// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:flat_icons_flutter/flat_icons_flutter.dart';
// import 'package:ethiocart/Screens/fogot_password_screen.dart';
// import 'package:ethiocart/Screens/notification_screen.dart';
// import 'package:ethiocart/Screens/register.dart';
// import 'package:ethiocart/Screens/favorites_screen.dart';

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
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: foryou',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Index 1: discover',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Index 2: moments',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Index 3: profile',
      style: TextStyle(color: Colors.blue),
    ),

    // notifications(),
    // favoritesHome(),
    // tickets(),
    // notifications(),
    homeFull(),
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
            icon: Icon(
              CupertinoIcons.home,
              size: 25,
              color: Colors.indigoAccent,
            ),
            label: 'foryou',
            activeIcon: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.compass,
              size: 25,
              color: Colors.indigoAccent,
            ),
            label: 'discover',
            activeIcon: Icon(
              CupertinoIcons.compass_fill,
              color: Colors.deepPurple,
            ),
          ),
          //favorites
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              size: 25,
              color: Colors.indigoAccent,
            ),
            label: 'moments',
            activeIcon: Icon(
              Icons.book_sharp,
              color: Colors.deepPurple,
            ),
          ),
          //tickets
          //profile
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.profile_circled,
              size: 25,
              color: Colors.indigoAccent,
            ),
            label: 'featured',
            activeIcon: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.indigo,
            ),
          ),
        ],
        elevation: 10,
        selectedLabelStyle: TextStyle(fontSize: 15),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
      ),
    );
  }
}
