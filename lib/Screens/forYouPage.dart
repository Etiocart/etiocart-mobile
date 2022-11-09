import 'package:ethiocart/Screens/Register.dart';

import './Screens.dart';
import 'package:flutter/material.dart';

class forYouPage extends StatefulWidget {
  const forYouPage({super.key});

  @override
  State<forYouPage> createState() => _foryouPageState();
}

class _foryouPageState extends State<forYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNav(),
    );
  }

  final List<Widget> _children = [
    Register(),
  ];
  int _selectedIndex = 0;
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
    Text(
      'Index 3: Love',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget BottomNav() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_sharp,
                size: 20, color: Colors.black45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation_sharp, size: 20, color: Colors.black45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, size: 20, color: Colors.black45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp,
                size: 20, color: Colors.black45),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
