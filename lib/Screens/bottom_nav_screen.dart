import 'package:ethiocart/Screens/moments/moments.dart';
import 'package:ethiocart/Screens/settings.dart';
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
  static List<Widget> _widgetOptions = <Widget>[
    Feed(),
    const Moments(),
    const Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget BottomNav() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          accentColor: Colors.teal.shade800),
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: 75,
          child: BottomNavigationBar(
            enableFeedback: false,
            backgroundColor: Colors.white,
            selectedIconTheme: const IconThemeData(),
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            items: <BottomNavigationBarItem>[
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     "assets/icons/home_outlined.png",
              //     width: width * 0.23,
              //     height: width * 0.058,
              //     color: Colors.teal.shade900,
              //   ),
              //   label: 'for you',
              //   activeIcon: Image.asset(
              //     "assets/icons/home_filled.png",
              //     width: width * 0.23,
              //     height: width * 0.058,
              //     color: Colors.teal.shade900,
              //   ),
              // ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/navigation_outlined.png",
                  width: width * 0.23,
                  height: width * 0.058,
                  color: Colors.teal.shade900,
                ),
                label: 'Discover',
                activeIcon: Image.asset(
                  "assets/icons/navigation_filled.png",
                  width: width * 0.23,
                  height: width * 0.058,
                  color: Colors.teal.shade900,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/camera_outlined.png",
                  width: width * 0.23,
                  height: width * 0.058,
                  color: Colors.teal.shade900,
                ),
                label: 'Moments',
                activeIcon: Image.asset(
                  "assets/icons/camera_filled.png",
                  width: width * 0.23,
                  height: width * 0.058,
                  color: Colors.teal.shade900,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: '',
                icon: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Person.png',
                  ),
                  radius: 20,
                ),
              ),
            ],
            elevation: 0,
            unselectedLabelStyle: TextStyle(color: Colors.teal.shade800),
            selectedLabelStyle: TextStyle(color: Colors.teal.shade800),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.teal.shade800,
          ),
        ),
      ),
    );
  }
}
