// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/cupertino.dart';

import '../Search/search_delegate.dart';
import 'ticket_widgets/tickets_widget.dart';
import 'package:flutter/material.dart';

class tickets extends StatelessWidget {
  const tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabView(context),
    );
  }

  final ticketavailable = true;

  Widget TabView(context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 25.0,
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            'Tickets',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        body: Column(
          children: [
        ticketavailable == true ? Completed() : emptyTickets()
          ],
        ),
      ),
    );
  }
}
