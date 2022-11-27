// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';

Widget emptyTickets() {
  return Container(
      margin: EdgeInsets.only(top: 250),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Empty Tickets',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: 300,
            child: Text(
              'Looks like you dont have a ticket yet, you can start searching for events now by Clicking the button below',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18, fontFamily: 'SFPro', color: Colors.black54),
            ),
          ),
          Text('Find Events',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SFPro',
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.bold)),
        ],
      ));
}
