import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(child: BottomNav());
  }

  int _selectedIndex = 0;
  int currentIndex = 0;
  final List<Widget> _children = [];
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: foryou',
      style: TextStyle(color: Colors.black,fontSize: 30),
    ),
    HomeTabView(),
    Text(
      'Index 2: moments',
      style: TextStyle(color: Colors.black,fontSize: 30),
    ),
    Text(
      'Index 3: profile',
      style: TextStyle(color: Colors.black,fontSize: 30),
    ),
    HomeFull(),
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
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedIconTheme: IconThemeData(),
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
              label: 'Personal',
              activeIcon: Image.asset(
                "assets/icons/home_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/navigation_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
              label: 'discover',
              activeIcon: Image.asset(
                "assets/icons/navigation_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
            ),
            //favorites
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/camera_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
              label: 'moments',
              activeIcon: Image.asset(
                "assets/icons/camera_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
            ),
            //tickets
            //profile
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/user_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
              label: 'Featured',
              activeIcon: Image.asset(
                "assets/icons/user_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,              ),
            ),
          ],
          elevation: 0,
          unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.teal.shade500),
          selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.teal.shade800),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.teal.shade800,
        ),
      ),
    );
  }
}
