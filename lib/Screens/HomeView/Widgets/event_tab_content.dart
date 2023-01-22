// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'event_search.dart';
import '../constants.dart';
import 'home_page_widgets.dart';
import 'popular_events.dart';
import 'card_list.dart';

class EventTab extends StatefulWidget {
  EventTab({Key? key}) : super(key: key);

  @override
  State<EventTab> createState() => _EventTabState();
}

class _EventTabState extends State<EventTab> {
  @override
  Widget build(BuildContext context) {
    return eventTabContent();
  }

  Container eventTabContent() {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  eventSearchBar(),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 5; i++)
                      cardListScreen.cardList(context, eventName[i],
                          eventLocation[i],
                          AssetImage('assets/images/541.png'),),
                  ],
                ),
              ),
              //category viewer
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < filtericons.length; i++)
                        PopularEvents.eventfilter(filtericons[i]),
                    ],
                  )),
              const eventTypesScreen(),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    for (var i = 0; i < 4; i++)
                      Row(
                        children:  [
                          SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: gridCard.GridView(EventMain[i], EventSub[i]),
                            ),
                          ),
                          SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: gridCard.GridView(EventSub[i], EventMain[i]),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
