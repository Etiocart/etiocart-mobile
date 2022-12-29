import 'package:ethiocart/Screens/Profile/choose_theme.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => choose_theme()),
              );
            },
            child: Text('choose theme'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => choose_theme()),
              );
            },
            child: Text('choose theme'),
          )
        ],
      ),
    );
  }
}
