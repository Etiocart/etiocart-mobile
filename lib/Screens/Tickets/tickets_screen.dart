// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/cupertino.dart';

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

  final upcoming = 0;
  final completed = 0;
  final cancelled = 0;
  final ticketavailable = true;

  Widget TabView(context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Gotham',
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
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
            bottom: const TabBar(

              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'incomplete',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                    child: Text('completed',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.bold))),
                Tab(
                    child: Text('cancelled',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    ticketavailable == true
                        ? incomplete()
                        : emptyTickets()
                  ],
                )),
              ),
              Container(
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    ticketavailable == true
                        ? Completed()
                        : emptyTickets()
                  ],
                )),
              ),
              Container(
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    ticketavailable == true
                        ? CancelledCard()
                        : emptyTickets()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
