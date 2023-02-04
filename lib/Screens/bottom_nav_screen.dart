import 'package:ethiocart/Screens/HomeView/Widgets/event_tab_content.dart';
import 'package:ethiocart/Screens/HomeView/Widgets/home_page_widgets.dart';
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
    Text(
      'this page is currently unavailable',
      style: TextStyle(color: Colors.black,fontSize: 22),
    ),
    Feed(),
    Moments(),
    Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget BottomNav() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                width: width*0.2,
                height: width*0.05,
                color: Colors.teal.shade800,
              ),
              label: 'for you',
              activeIcon: Image.asset(
                "assets/icons/home_filled.png",
                width: width*0.2,
                height: width*0.05,
                color: Colors.teal.shade800,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/navigation_outlined.png",
                width: width*0.2,
                height: width*0.05,
                color: Colors.teal.shade800,              ),
              label: 'discover',
              activeIcon: Image.asset(
                "assets/icons/navigation_filled.png",
                width: width*0.2,
                height: width*0.05,
                color: Colors.teal.shade800,              ),
            ),
            //favorites
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/camera.gif",
                width: width*0.23,
                height: width*0.07,
                color: Colors.teal.shade800,              ),
              label: 'moments',
              activeIcon: Image.asset(
                "assets/icons/camera_filled.png",
                width: width*0.2,
                height: width*0.05,
                color: Colors.teal.shade800,              ),
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
Widget HomeTabView() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'SFPro',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal.shade800)
    ),
    home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: greetingContainerScreen(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          bottom: const TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xff004d40),
            indicatorColor: Colors.teal,
            tabs: [
              Tab(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SFPro',
                    ),
                  )),
              Tab(
                  child: Text('Transport',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SFPro',
                      ))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EventTab(),
            TransportTab()
          ],
        ),
      ),
    ),
  );
}
