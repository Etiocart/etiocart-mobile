// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../home_view/Widgets/event_search.dart';
import '../home_view/constants.dart';
import '../home_view/Widgets/home_page_widgets.dart';

class TransportTab extends StatefulWidget {
  const TransportTab({Key? key}) : super(key: key);

  @override
  State<TransportTab> createState() => _TransportTabState();
}

class _TransportTabState extends State<TransportTab> {
  @override
  Widget build(BuildContext context) {
    return Material(child: transportTabContent());
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  EventSearchBar(),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var index = 0; index < location1.length; index++)
                      CardListScreen.cardList(context, '${location1[index]}-${location2[index]}',
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
              const EventTypesScreen(),
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
                              child: GridCard.gridView(textMain[i], textSub[i]),
                            ),
                          ),
                          SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: GridCard.gridView(textSub[i], textMain[i]),
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
