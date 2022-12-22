import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularEvents extends StatelessWidget {
  PopularEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return events();
  }

  Widget events() {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: IconButton(
        iconSize: 30,
        onPressed: () {},
        icon: Icon(CupertinoIcons.tv_music_note),
        style: ButtonStyle(),
      ),
    );
  }
}
