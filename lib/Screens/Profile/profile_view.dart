// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings,
// avoid_print

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../authentication/login.dart';
import '../setting_page.dart';
import 'profile_export.dart';
import 'package:ethiocart/Screens/Screens.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  profileView({Key? key}) : super(key: key);

  List<Widget> routePages = [
    favoritesHome(),
    helpCenter(),
    paymentWallet(),
    tickets(),
    Notifications()
  ];
  List<String> tabNames = [
    'Favorite Events',
    'Help center',
    'Wallet',
    'Tickets',
    'Notifications',
  ];

  List<IconData> fontawesomeIcons = [
    CupertinoIcons.calendar,
    CupertinoIcons.info,
    CupertinoIcons.creditcard,
    CupertinoIcons.ticket,
    CupertinoIcons.bell
  ];
  List<String> flatIcons = [
    'assets/icons/calendar-check.png',
    'assets/icons/question.png',
    'assets/icons/credit-card.png',
    'assets/icons/ticket.png',
    'assets/icons/ticket.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: SafeArea(child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: profileScreen(context),
          ))),
    );
  }

  Widget profileScreen(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                for (var i = 0; i < 5; i++)
                  (Container(
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
                              Container(
                                width: width*0.04,
                                height: height*0.04,
                                child: Icon(fontawesomeIcons[i],
                                    size: 25,
                                    color: Colors.black),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text(
                                    tabNames[i],
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  )),
                              Spacer(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Divider(thickness: 1, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
