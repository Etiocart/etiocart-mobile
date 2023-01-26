// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings,
// avoid_print

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../authentication/login.dart';
import 'profile_export.dart';
import 'package:ethiocart/Screens/Screens.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  profileView({Key? key}) : super(key: key);

  List<Widget> routePages = [
    // for (var i = 0; i < 13; i++)
    favoritesHome(),
    helpCenter(),
    paymentWallet(),
    tickets()
  ];
  List<String> tabNames = [
    'favorite events',
    'Help center',
    'Wallet',
    'Tickets'
  ];

  List<IconData> fontawesomeIcons = [
    FontAwesomeIcons.calendar,
    FontAwesomeIcons.moon,
    FontAwesomeIcons.info,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.ticket,
  ];
  List<String> flatIcons = [
    'assets/icons/calendar-check.png',
    'assets/icons/question.png',
    'assets/icons/credit-card.png',
    'assets/icons/ticket.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            title: Row(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                IconButton(
                    color: Theme.of(context).iconTheme.color,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeFull()),
                      );
                    },
                    icon: Image.asset('assets/icons/home.png',
                        width: 30,
                        height: 30,
                        color: Theme.of(context).iconTheme.color)),
              ],
            ),
          ),
          body: SafeArea(child: profileScreen(context))),
    );
  }

  Widget profileScreen(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(360),
                  child: Container(
                    width: width * 0.38,
                    height: height * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: Color(0xffe2ede5),
                    ),
                    child: Center(
                        child: Icon(
                      FontAwesomeIcons.user,
                      color: Colors.teal.shade400,
                      size: 35,
                    )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 110, left: 100),
                  width: width * 0.12,
                  height: width * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.teal.shade700,
                      borderRadius: BorderRadius.circular(360)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfile()),
                        );
                      },
                      icon: Icon(
                        FontAwesomeIcons.pencil,
                        size: 25,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              'Andrew Ainsley',
              style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 25,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w400),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 0, top: 0),
                    child: Column(
                      children: [],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  for (var i = 0; i < 4; i++)
                    (Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        focusColor: Colors.white,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => routePages[i]),
                          );
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: width*0.04,
                                  height: height*0.04,
                                  child: Icon(fontawesomeIcons[i],
                                      size: 22,
                                      color: Colors.teal.shade900),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      tabNames[i],
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.teal.shade900,
                                      ),
                                    )),
                                Spacer(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Divider(thickness: 1),
                            ),
                          ],
                        ),
                      ),
                    )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                            // decoration: BoxDecoration(border: Border),
                            padding: EdgeInsets.only(left: 140, top: 20),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal.shade900,
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
