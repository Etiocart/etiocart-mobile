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
  // List<String> flatIcons = [
  //   'assets/icons/calendar-check.png',
  //   'assets/icons/chat.png',
  //   'assets/icons/user.png',
  //   'assets/icons/notification.png',
  //   'assets/icons/credit-card(1).png',
  //   'assets/icons/ticket.png',
  // ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            // actions: [
            //   Padding(
            //     padding: const EdgeInsets.only(right: 10),
            //     child: IconButton(
            //         color: Theme.of(context).iconTheme.color,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => bottom_nav()),
            //           );
            //         },
            //         icon: Image.asset('assets/icons/home.png',
            //             width: 30,
            //             height: 30,
            //             color: Theme.of(context).iconTheme.color)),
            //   ),
            // ],

            // title: Text(
            //   'Profile',
            //   style: TextStyle(
            //     color: Theme.of(context).primaryColor,
            //     fontSize: 25,
            //   ),
            // ),

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
            //backgroundColor: Theme.of(context).backgroundColor,
            // foregroundColor: Colors.black,
            // backgroundColor: Colors.white,
            // Color(0xff428678)
          ),
          body: SafeArea(child: profileScreen(context))),
    );
  }

  Widget profileScreen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      width: double.infinity,
      height: double.infinity,
      // color: Colors.red,
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
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(bottom: 0),
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
                  margin: EdgeInsets.only(top: 100, left: 100),
                  width: 50, height: 50,
                  decoration: BoxDecoration(color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(360)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => editProfile()),
                      );
                    },
                    icon:Icon( FontAwesomeIcons.pencil, size: 25, color: Colors.white,)),
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
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 0, top: 0),
                    child: Column(
                      children: [],
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
              // color: Colors.red,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  for (var i = 0; i < 4; i++)
                    (
                        Container(
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
                                  // margin: EdgeInsets.only(right: 5),
                                  // height: 25,
                                  // width: 25,
                                  // child: Icon(fontawesomeIcons[i],
                                  //   size: 30,
                                  // ),
                                  width: 40,
                                  height: 40,
                                  // padding: EdgeInsets.all(10),
                                  // decoration: BoxDecoration(
                                  //     color: Theme.of(context).cardColor,
                                  //     borderRadius:
                                  //         BorderRadius.circular(20)),
                                  child: Icon(fontawesomeIcons[i],
                                      size: 25,
                                      color: Theme.of(context).iconTheme.color),
                                  // Image.asset(
                                  //   flatIcons[i],
                                  //   width: 25,
                                  //   height: 25,
                                  //   color: Colors.teal.shade900,
                                  // ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      tabNames[i],
                                      style: TextStyle(
                                          fontSize: 20,
                                        color: Colors.teal.shade900,),
                                    )),

                                Spacer(),
                                // Container(
                                //   margin: EdgeInsets.only(right: 0),
                                //   child: Image.asset('assets/icons/gts.png',
                                //       width: 35, height: 35, color: Colors.black),
                                // ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 55),
                              child: Divider(thickness: 1),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(top: 5,left: 0 ),
                            //   width: 250, height: 0.8, color: Colors.grey.shade500,),
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
                            // decoration: BoxDecoration(border: Border),
                            margin: EdgeInsets.only(left: 140, top: 20),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                color: Colors.teal.shade900,),
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
