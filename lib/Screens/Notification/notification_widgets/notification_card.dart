// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notifications_widget.dart';

Widget notificationCard() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    width: double.infinity,
    height: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Card(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Stack(children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Icon(
                      CupertinoIcons.calendar_today,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        'Booking Successful!',
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      dateTime(),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 70),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text('New')))
              ],
            ),
            Container(
              width: 380,
              margin: EdgeInsets.only(left: 25, right: 5),
              child: Text(
                'Last Column Last Column Last Last ColumnLast Column Last',
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
