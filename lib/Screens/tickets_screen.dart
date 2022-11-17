import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class tickets extends StatelessWidget {
  const tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabView(),
    );
  }
}

Widget TabView() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Container(color: Colors.white, width: 410, height: 50,
            child: Text('Hello', style: TextStyle(color: Colors.black),),
            )],
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('upcoming', style: TextStyle(color: Colors.black,
                  fontSize: 18, fontFamily: 'SFCompact'),)),
              Tab(child: Text('completed', style: TextStyle(color: Colors.black,
              fontSize: 18, fontFamily: 'SFCompact'))),
              Tab(child: Text('cancelled', style: TextStyle(color: Colors.black,
              fontSize: 18, fontFamily: 'SFCompact'))),
            ],
          ),
          title: Container(),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.black12,
              child: Center(
                  child: Column(
                children: [],
              )),
            ),
            Container(
              color: Colors.black12,
              child: Center(
                  child: Column(
                children: [
                  completedTicketCard(),
                  completedTicketCard(),
                ],
              )),
            ),
            Container(
              color: Colors.black12,
              child: Center(
                  child: Column(
                children: [
                  cancelledTicketCard(),
                ],
              )),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget completedTicketCard() {
  return Container(
    
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
          children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 15, right: 10),
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Screenshot.jpeg'),
                  ),
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children:  [
                Text(
                  'Traditional Dance Concert',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'SFCompact',
                      fontSize: 26),
                ),
                Text(
                  'Wed Dec 2022 18:00 - 22:00',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'SFCompact',
                      fontSize: 22),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.black,
                        size: 25,
                      ),

                      Flexible(
                        child: Text(
                          'New york 101 avenue',
                          maxLines: 1,
                          style: TextStyle(fontFamily: 'SFCompact', fontSize: 18),
                        ),
                      ),

                      custombutton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]));
}

Widget cancelledTicketCard() {
  return Container(

      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15, right: 10),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children:  [
                    Text(
                      'Traditional Dance Concert',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.indigo,
                          fontFamily: 'SFCompact',
                          fontSize: 26),
                    ),
                    Text(
                      'Wed Dec 2022 18:00 - 22:00',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.indigo,
                          fontFamily: 'SFCompact',
                          fontSize: 22),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.black,
                            size: 25,
                          ),
                          Flexible(
                            child: Text(
                              'New york 101 avenue',
                              maxLines: 1,
                              style: TextStyle(fontFamily: 'SFCompact', fontSize: 18),
                            ),
                          ),

                          custombutton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]));
}

Widget custombutton() {
  return Container(
    child: OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      width: 50.0,
                      color: Colors.red,
                      style: BorderStyle.solid,
                    )))),
        onPressed: () {},
        child: Row(
          children: [Text('Cancelled', style: TextStyle(color: Colors.red),)],
        )),
  );
}

Widget ticketsCards() {
  return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Container(
          child: Expanded(
        child: Row(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 15, right: 0),
                padding: EdgeInsets.only(right: 20),
                width: 140,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 15, right: 10),
            child: Center(
              child: Column(
                children: [
                  Column(children: [
                    Row(
                      children: [
                        Text(
                          'Traditional dance festivallllllllllllllllllllllll',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontFamily: 'SFCompact', fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Dec 21, 2022, 18:00- 22:00',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontFamily: 'SFCompact', fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'data',
                          style:
                              TextStyle(fontFamily: 'SFCompact', fontSize: 20),
                        ),
                        custombutton(),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        ]),
      )));
}
