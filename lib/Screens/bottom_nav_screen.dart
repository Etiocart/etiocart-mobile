import 'package:ethiocart/Screens/Foryou/foryou.dart';
import 'package:ethiocart/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'HomeView/for_you.dart/for_you.dart';
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
  static List<Widget> _widgetOptions = <Widget>[
    ForYou(),
    // Text(
    //   'Index 2: this is for you',
    //   style: TextStyle(color: Colors.black, fontSize: 30),
    // ),
    HomeTabView(),
    ForYouPage(),
    // Settings(),
    profileView()
  ];

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
              label: 'for you',
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
                color: Colors.teal.shade800,
              ),
              label: 'discover',
              activeIcon: Image.asset(
                "assets/icons/navigation_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
            ),
            //favorites
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/camera_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
              label: 'moments',
              activeIcon: Image.asset(
                "assets/icons/camera_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
            ),
            //tickets
            //profile
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/user_outlined.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
              label: 'Settings',
              activeIcon: Image.asset(
                "assets/icons/user_filled.png",
                width: 20,
                height: 20,
                color: Colors.teal.shade800,
              ),
            ),
          ],
          elevation: 0,
          unselectedLabelStyle:
              TextStyle(fontSize: 15, color: Colors.teal.shade500),
          selectedLabelStyle:
              TextStyle(fontSize: 16, color: Colors.teal.shade800),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.teal.shade800,
        ),
      ),
    );
  }
}
