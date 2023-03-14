import 'package:flutter/material.dart';
// import '../constants.dart';
export './popular_events.dart';

class PopularEvents extends StatefulWidget {
  const PopularEvents({super.key});
  @override
  State<PopularEvents> createState() => _PopularEventsState();
  static Widget eventfilter(IconData ficons) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: IconButton(
        iconSize: 30,
        onPressed: () {},
        icon: Icon(ficons),
        style: const ButtonStyle(),
      ),
    );
  }
}

class _PopularEventsState extends State<PopularEvents> {
  @override
  Widget build(BuildContext context) {
    return Container();}
}
