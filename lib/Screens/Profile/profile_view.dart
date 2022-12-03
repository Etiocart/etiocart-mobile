// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings,
// avoid_print

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              elevation: 8,
              title: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homeFull()),
                        );
                      },
                      icon: Image.asset('assets/icons/home.png',
                          width: 25, height: 25, color: Colors.white)),
                ],
              ),
              foregroundColor: Colors.white,
              backgroundColor:Color(0xff428678),
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
                  color: Color(0xff046B40),
                ),
                child: Center(
                    child: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                  size: 30,
                )),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              'Andrew Ainsley',
              style: TextStyle(
                  color: Color(0xff046B40),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
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
                        Text(
                          '7,389',
                          style: TextStyle(
                              fontFamily: 'sans',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              fontFamily: 'sans',
                              color: Colors.black,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          '125',
                          style: TextStyle(
                              fontFamily: 'sans',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              fontFamily: 'sans',
                              color: Colors.black,
                              fontSize: 18),
                        )
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
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => routePages[i]),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              // height: 30,
                              // width: 30,
                              // child: Icon(fontawesomeIcons[i],
                              // color: Color(0xff046B40),
                              //   size: 30,
                              // ),
                              // child: Image.asset(
                              //   flatIcons[i],
                              //   color: Colors.black87,
                              // ),
                            ),
                            GestureDetector(
                              child: Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Text(
                                    tabNames[i],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Image.asset('assets/icons/gts.png',
                                    width: 35, height: 35, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => logOut()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 0),
                          height: 35,
                          width: 5,
                          // child: Image.asset('assets/icons/exit.png',
                          // child: Icon(FontAwesomeIcons.arrowRightFromBracket,
                          //     color: Colors.red),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 0),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red),
                            )),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 0),
                          child: Image.asset('assets/icons/gts.png',
                              width: 35, height: 35, color: Colors.red),
                        ),
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

//attribution
// <a href="https://www.flaticon.com/free-icons/profile"
// title="profile icons">Profile icons created by Softway_Design -
// Flaticon</a>
