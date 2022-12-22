import 'package:ethiocart/Screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens.dart';

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
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    Text(
      'Index 1: discover',
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    Setting_page(),
    // Text(
    //   'Index 3: profile',
    //   style: TextStyle(color: Colors.black,fontSize: 30),
    // ),

    // notifications(),
    // favoritesHome(),
    // tickets(),
    // notifications(),
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
        margin: EdgeInsets.only(left: 10, right: 10),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffE0EBE3),
          selectedIconTheme: IconThemeData(color: Colors.green.shade100),
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home_outlined.png",
                width: 25,
                height: 25,
                color: Colors.black54,
              ),
              label: 'Personal',
              activeIcon: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(360)),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "assets/icons/home_filled.png",
                  width: 25,
                  height: 25,
                  color: Colors.black54,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/navigation_outlined.png",
                width: 25,
                height: 25,
                color: Colors.black54,
              ),
              label: 'discover',
              activeIcon: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(360)),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "assets/icons/navigation_filled.png",
                  width: 25,
                  height: 25,
                  color: Colors.black54,
                ),
              ),
            ),
            //favorites
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/camera_outlined.png",
                width: 25,
                height: 25,
                color: Colors.black54,
              ),
              label: 'moments',
              activeIcon: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(360)),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "assets/icons/camera_filled.png",
                  width: 25,
                  height: 25,
                  color: Colors.black54,
                ),
              ),
            ),
            //tickets
            //profile
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/user_outlined.png",
                width: 25,
                height: 25,
                color: Colors.black54,
              ),
              label: 'Featured',
              activeIcon: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(360)),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "assets/icons/user_filled.png",
                  width: 25,
                  height: 25,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
          elevation: 10,
          unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.grey),
          selectedLabelStyle: TextStyle(fontSize: 15, color: Colors.grey),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
