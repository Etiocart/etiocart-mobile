import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class eventsScreen extends StatelessWidget {
  const eventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return events();
  }
}


Widget events() {
  return Container(
      margin: EdgeInsets.only(right: 10, top: 20, bottom: 20),
      height: 45,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: OutlinedButton.icon(
        icon: Icon(CupertinoIcons.music_note_2, color: Colors.deepPurpleAccent),
        label: Text("Music"),
        onPressed: () => print("it's pressed"),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Colors.deepPurpleAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ));
}

