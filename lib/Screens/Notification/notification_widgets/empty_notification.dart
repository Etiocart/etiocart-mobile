// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

Widget emptyNotification() {
    return Material(
      child: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/vector.jpg'),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      'Empty',
                      style: TextStyle(fontSize: 25, fontFamily: 'SFPro'),
                    )),
                    Container(
                      child: Text(
                        'you dont have any notifications at this time',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20, fontFamily: 'SFPro'),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }