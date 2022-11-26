import 'package:flutter/material.dart';

final ButtonStyle buttomPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(300, 50),
  backgroundColor: Color(0xFF0B594C),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);
final ButtonStyle buttomPrimary2 = OutlinedButton.styleFrom(
  minimumSize: Size(300, 50),
  foregroundColor: Color(0xFF0B594C),
  backgroundColor: Colors.white,
  elevation: 5, //<-- SEE HERE
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  shadowColor: Color(0xFF0B594C), //<-- SEE HERE
);
