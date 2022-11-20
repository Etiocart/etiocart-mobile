import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  profileView({Key? key}) : super(key: key);

  List<String> tabNames = [
    'Manage Events',
    'Message Cente',
    'Profile',
    'Notification',
    'Menu',
    'notification'
  ];

  List<String> flatIcons = [
    'assets/icons/notification.png',
    'assets/icons/user.png',
    'assets/icons/home.png',
    'assets/icons/calendar.png',
    'assets/icons/menu.png',
    'assets/icons/chat.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
          ),
          body: SafeArea(child: profileScreen())),
    );
  }

  Widget profileScreen() {
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
                  for (var i = 0; i < 5; i++)
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50),
                          height: 30,
                          width: 30,
                          child: Image.asset(flatIcons[i], color: Colors.black),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 0),
                            child: Text(
                              tabNames[i],
                              style:
                                  TextStyle(fontFamily: 'sans', fontSize: 16),
                            )),
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
