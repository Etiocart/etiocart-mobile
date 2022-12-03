// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'tickets_widget.dart';

Widget upcomingTicketCard() {
  var color = Colors.indigoAccent;
  var text = Text('Book');
  return Column(
    children: [
      Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0, top: 15, right: 0),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Traditional Dance Concert',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SFCompact',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Wed Dec 2022 18:00 - 22:00 PM',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.indigo,
                          fontFamily: 'SFCompact',
                          fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.indigoAccent,
                            size: 25,
                          ),
                          Flexible(
                            child: Text(
                              'New york 101 avenue',
                              maxLines: 1,
                              style: TextStyle(
                                  fontFamily: 'SFCompact',
                                  color: Colors.black38,
                                  fontSize: 16),
                            ),
                          ),
                          statusValue == true
                              ? statusButton('Paid', 32, Colors.greenAccent)
                              : statusButton(
                                  'Cancel Booking', 32, Colors.indigoAccent)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ])),
    ],
  );
}


