import 'package:ethiocart/Screens/Profile/profiles_widget/hel_center_bottom_nav.dart';
import 'package:ethiocart/Screens/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'profile_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class helpCenter extends StatelessWidget {
  const helpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return helpCenterTab(context);
  }

  Widget helpCenterTab(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 20.0,
              color: Colors.teal.shade800,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // automaticallyImplyLeading: false,
            title: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profileView()),
                  );
                },
                child: Text('Help center', style: TextStyle(color: Colors.teal.shade800),)),
            backgroundColor:Colors.white,
            foregroundColor: Colors.black,
            bottom:  TabBar(
              unselectedLabelColor: Colors.grey.shade400,
              labelColor: Colors.teal.shade800,
              tabs: [
                Tab(
                    child: Text(
                  'FAQ',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text('Contact Us',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Help !',
                        style: TextStyle(color: Colors.deepOrange, fontSize: 35),
                      ),
                      Text(
                        'Help Page is Loading',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
