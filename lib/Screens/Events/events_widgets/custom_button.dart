// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  Widget custombutton() {
    const int i = 0;
    const _iconTypes = <IconData>[
      Icons.music_note_sharp,
      Icons.add_location_sharp,
    ];
    return Container(
      child: OutlinedButton.icon(
        icon: Icon(CupertinoIcons.music_note_2, color: Color(0xff428678)),
        label: Text("Music", style: TextStyle(color: Color(0xff428678)),),
        onPressed: () => print("it's pressed"),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Color(0xff428678)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
