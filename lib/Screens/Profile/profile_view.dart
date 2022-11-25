import '../Events/manage_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  profileView({Key? key}) : super(key: key);

  List<Widget> routePages = [
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
    manageEvents(),
  ];
  List<String> tabNames = [
    'Manage Events',
    'Message Center',
    'Profile',
    'Notification',
    'Payments',
    'linked accounts',
    'Ticket issues',
    'Security',
    'Language',
    'Dark Mode',
    'help Center',
    'Invite Friends',
    'Rate us',
  ];

  List<String> flatIcons = [
    'assets/icons/calendar-check.png',
    'assets/icons/chat.png',
    'assets/icons/user.png',
    'assets/icons/notification.png',
    'assets/icons/credit-card(1).png',
    'assets/icons/exchange.png',
    'assets/icons/ticket(1).png',
    'assets/icons/verified.png',
    'assets/icons/translation.png',
    'assets/icons/show.png',
    'assets/icons/information.png',
    'assets/icons/friends.png',
    'assets/icons/star.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/menu.png',
                        width: 35, height: 35, color: Colors.black45)),
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: SafeArea(child: profileScreen(context))),
    );
  }

  Widget profileScreen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.lightBlueAccent,
              ),
            ),
            Text(
              'Andrew Ainsley',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
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
                        Text(
                          '12',
                          style: TextStyle(
                              fontFamily: 'sans',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Events',
                          style: TextStyle(
                            fontFamily: 'sans',
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0),
                    child: Column(
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
              child: Column(
                children: [
                  for (var i = 0; i < 13; i++)
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50),
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            flatIcons[i],
                            color: Colors.black87,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => routePages[i]),
                            );
                            print('this is working');
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 0),
                              child: Text(
                                tabNames[i],
                                style: TextStyle(
                                    fontFamily: 'sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
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
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/icons/exit.png',
                            color: Colors.red),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(right: 0),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontFamily: 'sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 0),
                          child: Image.asset('assets/icons/gts.png',
                              width: 30, height: 30, color: Colors.red),
                        ),
                      ),
                    ],
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
