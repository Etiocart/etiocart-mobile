import 'package:flutter/material.dart';

class tickets extends StatelessWidget {
  const tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabView(),
    );
  }

  final upcoming = 0;
  final completed = 0;
  final cancelled = 0;
  final ticketavailable = true;

  final statusValue = false;

  Widget TabView() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tickets',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SFPro',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
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

  Widget emptyTickets() {
    return Container(
        margin: EdgeInsets.only(top: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Empty Tickets',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 300,
              child: Text(
                'Looks like you dont have a ticket yet, you can start searching for events now by Clicking the button below',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, fontFamily: 'SFPro', color: Colors.black54),
              ),
            ),
            Text('Find Events',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SFPro',
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold)),
          ],
        ));
  }

  Widget statusButton(String text, double radius, Color colorex) {
    String $text = text;
    double $radi = radius;
    var  $calor = Colors.indigoAccent;
    var $calor2 = colorex;
    return Container(
        margin: EdgeInsets.only(right: 10, top: 20, bottom: 20),
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: OutlinedButton(
          child: Text($text,style: TextStyle(color: $calor2),),
          onPressed: () => print("it's pressed"),
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: 2.0,
                color: $calor2
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular($radi),
            ),
          ),
        ));
  }

  Widget upcomingTicketCard() {
    var color = Colors.indigoAccent;
    var text = Text('Book');
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 15, right: 0),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        'Traditional Dance Concert',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SFCompact',
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Wed Dec 2022 18:00 - 22:00 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontFamily: 'SFCompact',
                            fontSize: 18),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.indigoAccent,
                              size: 25,
                            ),
                            Flexible(
                              child: Text(
                                'New york 101 avenue',
                                maxLines: 1,
                                style: TextStyle(
                                    fontFamily: 'SFCompact',
                                    color: Colors.black38,
                                    fontSize: 16),
                              ),
                            ),
                            statusValue == true
                                ? statusButton('Paid',32, Colors.greenAccent)
                                : statusButton('Cancel Booking', 32, Colors.indigoAccent)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])),
      ],
    );
  }

  Widget ticketcancelledCard() {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 15, right: 10),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Traditional Dance Concert',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFCompact',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Wed Dec 2022 18:00 - 22:00 PM',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontFamily: 'SFCompact',
                        fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.indigoAccent,
                          size: 25,
                        ),
                        Flexible(
                          child: Text(
                            'New york 101 avenue',
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: 'SFCompact',
                                color: Colors.black38,
                                fontSize: 16),
                          ),
                        ),
                        statusValue == false
                            ? statusButton('Cancelled',32, Colors.red)
                            : Container()
                        //button Placement
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }

  Widget ticketCompletedCard() {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 15, right: 10),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Traditional Dance Concert',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFCompact',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Wed Dec 2022 18:00 - 22:00 PM',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontFamily: 'SFCompact',
                        fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.indigoAccent,
                          size: 25,
                        ),
                        Flexible(
                          child: Text(
                            'New york 101 avenue',
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: 'SFCompact',
                                color: Colors.black38,
                                fontSize: 16),
                          ),
                        ),
                        statusValue == true
                            ? statusButton('pay', 32, Colors.indigoAccent)
                            : statusButton('Completed', 32, Colors.green)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
