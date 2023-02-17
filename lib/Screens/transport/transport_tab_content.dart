// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../HomeView/Widgets/event_search.dart';
import '../HomeView/constants.dart';
import '../HomeView/Widgets/home_page_widgets.dart';
import '../HomeView/Widgets/popular_events.dart';
import '../HomeView/Widgets/card_list.dart';

class TransportTab extends StatefulWidget {
  TransportTab({Key? key}) : super(key: key);

  @override
  State<TransportTab> createState() => _TransportTabState();
}

class _TransportTabState extends State<TransportTab> {
  @override
  Widget build(BuildContext context) {
    return transportTabContent();
  }


  Widget transportTabContent() {
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
                    for (var index = 0; index < location1.length; index++)
                      cardListScreen.cardList(context, location1[index]+'-'+location2[index],
                          distance[index],
                          AssetImage('assets/images/541.png')),

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
                              child: gridCard.GridView(TextMain[i], TextSub[i]),
                            ),
                          ),
                          SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: gridCard.GridView(TextSub[i], TextMain[i]),
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
