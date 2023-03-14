import 'package:ethiocart/Screens/moments/moments.dart';
import 'package:ethiocart/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Screens.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return bottomNav();
  }

  // these two lines are used to index the 
  //bottom navigation to the selected index
  int _selectedIndex = 0;
  int currentIndex = 0;

  // list of widgets to traverse through for the bottom appbar
  static final List<Widget> _widgetOptions = <Widget>[
     const Feed(),
     const Moments(),
     const Settings(),
  ];

  // a function to set the index of the bonaba
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bottomNav() {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          ),
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            enableFeedback: false,
            backgroundColor: Colors.white,
            selectedIconTheme: const IconThemeData(),
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            items: <BottomNavigationBarItem>[
              // discover item
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/compass.svg",
                  width: width * 0.23,
                  height: width * 0.05,
                  color: Colors.black,
                ),
                label: 'Discover',
                activeIcon: Image.asset(
                  "assets/icons/navigation_outlined.png",
                  width: width * 0.23,
                  height: width * 0.05,
                  color:const Color(0xff394f6b)
                ),
              ),
              // moments item
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/camera.svg",
                  width: width * 0.23,
                  height: width * 0.05,
                  color:Colors.black,
                ),
                label: 'Moments',
                // activeIcon: Icon(CupertinoIcons.camera)
                activeIcon: Image.asset(
                  "assets/icons/camera_outlined.png",

                  width: width * 0.23,
                  height: width * 0.05,
                  color: const Color(0xff394f6b),
                ),
              ),
              // profile item
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: '',
                icon: CircleAvatar(
                  backgroundColor: const Color(0xff394f6b).withOpacity(0.5),
                  backgroundImage: const AssetImage(
                    'assets/images/Person.png',
                  ),
                  radius: 20,
                ),
              ),
            ],
            elevation: 0,
            iconSize: 20,
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
