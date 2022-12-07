// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'events_widget.dart';
  Widget viewsbutton() {
    return Container(
      margin: EdgeInsets.only(left:20, right: 15,top: 5),
      width: double.infinity,
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < 4; i++)
            Container(
                margin: EdgeInsets.only(right: 10),
                child: custombutton()),
          ],
        ),
      ),
    );
  }
