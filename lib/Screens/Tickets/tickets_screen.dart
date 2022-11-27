// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(
                  'Tickets',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFPro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            backgroundColor: Colors.white,
            bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.indigoAccent,
              tabs: [
                Tab(
                    child: Text(
                  'upcoming',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                )),
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
                color: Colors.white,
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
                color: Colors.white,
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
                color: Colors.white,
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
