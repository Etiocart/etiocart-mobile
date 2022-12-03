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
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xff428678)),
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 20.0,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xff428678),
            foregroundColor: Colors.white,
            title: Text(
              'Tickets',
            ),
            bottom: const TabBar(
              unselectedLabelColor: Colors.white38,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    'upcoming',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.bold),
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
                color: Color(0xfff2f2ed),
                child: Center(
                    child: Column(
                  children: [
                    ticketavailable == true
                        ? upcomingTicketCard()
                        : emptyTickets()
                  ],
                )),
              ),
              Container(
                color: Color(0xfff2f2ed),
                child: Center(
                    child: Column(
                  children: [
                    ticketavailable == true
                        ? ticketCompletedCard()
                        : emptyTickets()
                  ],
                )),
              ),
              Container(
                color: Colors.green.shade50,
                child: Column(
                  children: [
                    ticketavailable == true
                        ? ticketcancelledCard()
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
