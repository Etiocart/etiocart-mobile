import 'package:flutter/material.dart';

class EventsDetail extends StatelessWidget {
  const EventsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.teal.shade900,
          elevation: 0,
          title: Text('Favourite'),
        ),
      )),
    );
  }
}
