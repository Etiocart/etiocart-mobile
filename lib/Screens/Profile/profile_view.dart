// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings,
// avoid_print

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../authentication/login.dart';
import 'profile_export.dart';
import 'package:ethiocart/Screens/Screens.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  profileView({Key? key}) : super(key: key);

  List<Widget> routePages = [
    // for (var i = 0; i < 13; i++)
    favoritesHome(),
    choose_theme(),
    editProfile(),
    helpCenter(),
    paymentWallet(),
    tickets()
  ];
  List<String> tabNames = [
    'manage events',
    'choose theme',
    'edit profile',
    'help center',
    'wallet',
    'tickets'
  ];

  List<IconData> fontawesomeIcons = [
    FontAwesomeIcons.calendar,
    FontAwesomeIcons.moon,
    FontAwesomeIcons.user,
    FontAwesomeIcons.info,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.ticket,
  ];
  List<String> flatIcons = [
    'assets/icons/calendar-check.png',
    'assets/icons/chat.png',
    'assets/icons/user.png',
    'assets/icons/notification.png',
    'assets/icons/credit-card(1).png',
    'assets/icons/ticket.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Gotham'),
      home: Material(
        child: Scaffold(
            appBar: AppBar(
              elevation: 5,
              title: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.teal.shade800,
                        fontSize: 25,),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeFull()),
                        );
                      },
                      icon: Image.asset('assets/icons/home.png',
                          width: 30, height: 30, color: Colors.teal.shade800)),
                ],
              ),
              foregroundColor: Colors.black,
              backgroundColor:Colors.white,
              // Color(0xff428678)
            ),
            body: SafeArea(child: profileScreen(context))),
      ),
    );
  }

  Widget profileScreen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(360),
              child: Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                    child: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.teal.shade400,
                  size: 35,
                )),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              'Andrew Ainsley',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.w400),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 0, top: 0),
                    child: Column(
                      children: [
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // Text(
                        //   '7,389',
                        //   style: TextStyle(
                        //       fontFamily: 'sans',
                        //       color: Colors.black,
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // Text(
                        //   'Followers',
                        //   style: TextStyle(
                        //       fontFamily: 'sans',
                        //       color: Colors.black,
                        //       fontSize: 18),
                        // )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // Text(
                        //   '125',
                        //   style: TextStyle(
                        //       fontFamily: 'sans',
                        //       color: Colors.black,
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // Text(
                        //   'Following',
                        //   style: TextStyle(
                        //       fontFamily: 'sans',
                        //       color: Colors.black,
                        //       fontSize: 18),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  for (var i = 0; i < 6; i++)
                    (
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                      child: InkWell(
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
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 5,
                                  child: Container(
                                    // margin: EdgeInsets.only(right: 5),
                                    // height: 25,
                                    // width: 25,
                                    // child: Icon(fontawesomeIcons[i],
                                    //   size: 30,
                                    // ),
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Image.asset(
                                      flatIcons[i],
                                      width: 25,
                                      height: 25,
                                      color: Colors.teal.shade900,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      tabNames[i],
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Image.asset('assets/icons/gts.png',
                                      width: 35, height: 35, color: Colors.black),
                                ),

                              ],
                            ),
                            // Container(width: 370, height: 1, color: Colors.green.shade500,),
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
                          // child: Image.asset('assets/icons/exit.png',
                          // child: Icon(FontAwesomeIcons.arrowRightFromBracket,
                          //     color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 140, top: 20),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red),
                            )),
                        // Spacer(),
                        // Container(
                        //   margin: EdgeInsets.only(right: 0),
                        //   child: Image.asset('assets/icons/gts.png',
                        //       width: 35, height: 35, color: Colors.red),
                        // ),
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

