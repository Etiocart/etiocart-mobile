// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings,
// avoid_print

import 'package:ethiocart/Screens/Policies/policies.dart';
// import 'package:ethiocart/Screens/Tickets/tickets_screen.dart';
// import 'package:ethiocart/Screens/Tickets/tickets_screen.dart';
import 'package:ethiocart/Screens/applock/app_lock.dart';
import 'package:ethiocart/Screens/change_phone/change_phone_number.dart';
import 'package:flutter/cupertino.dart';

import '../Tickets/tickets_screen.dart';
import 'profile_export.dart';
import 'package:ethiocart/Screens/Screens.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  final List<Widget> routePages = [
    //favorites page
    FavoritesEventsList(),
    //help center
    HelpCenter(),
    //wallet
    PaymentWallet(),
    //my tickets
    // TicketsPage(),   <<<<<<<<<----------------------------------
    //policiies
    Policies(),
    //app lock
    AppLock(),
    //change phone number
    ChangePhoneNumber(),
  ];
  final List<String> tabNames = [
    'Favorites',
    'Help Center',
    'Wallet',
    'My Tickets',
    'Policies',
    'App Lock',
    'Change Phone'
  ];

  final List<IconData> fontawesomeIcons = [
    Icons.wine_bar_outlined,
    CupertinoIcons.info,
    CupertinoIcons.creditcard,
    CupertinoIcons.ticket,
    CupertinoIcons.bell,
    CupertinoIcons.lock,
    CupertinoIcons.phone,
  ];
  final List<String> customIcons = [
    'assets/icons/calendar-check.png',
    'assets/icons/question.png',
    'assets/icons/credit-card.png',
    'assets/icons/ticket.png',
    'assets/icons/ticket.png',
    'assets/icons/ticket.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: SafeArea(
              child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: profileScreen(context),
      ))),
    );
  }

  Widget profileScreen(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 0, left: 30, right: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                for (var i = 0; i < tabNames.length; i++)
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
                              CircleAvatar(
                                backgroundColor: Colors.grey.withOpacity(0.2),
                                child: Center(
                                  child: Icon(fontawesomeIcons[i],
                                      size: 25, color: Colors.green.shade900),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 15),
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
