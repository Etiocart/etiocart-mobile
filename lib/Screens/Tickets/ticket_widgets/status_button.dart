// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';

Widget statusButton(String text, double radius, Color colorex) {
  String $text = text;
  double $radi = radius;
  var $calor2 = colorex;
  return Container(
      margin: EdgeInsets.only(right: 10, top: 20, bottom: 20),
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: OutlinedButton(
        onPressed: () => print("it's pressed"),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: $calor2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($radi),
          ),
        ),
        child: Text(
          $text,
          style: TextStyle(color: $calor2),
        ),
      ));
}
