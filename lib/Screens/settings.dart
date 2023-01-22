import 'package:ethiocart/Screens/Profile/choose_theme.dart';
import 'package:ethiocart/Screens/Profile/profile_export.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 140),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => choose_theme()),
                    );
                  },
                  child: Text('Choose theme', style: TextStyle(fontSize: 18),),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profileView()),
                    );
                  },
                  child: Text('Profile', style: TextStyle(fontSize: 18)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
