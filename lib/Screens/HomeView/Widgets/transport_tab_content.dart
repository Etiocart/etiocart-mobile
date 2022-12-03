import 'package:ethiocart/Screens/HomeView/search_transport.dart';
import 'package:flutter/material.dart';
import 'home_page_widgets.dart';
Scaffold transportTabContent() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Container(
        color: Color(0xffFAF9F6),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            transportSearchBar(),
            categoryViewScreen(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 6; i++) cardListScreen(),
                ],
              ),
            ),
            eventTypesScreen(),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 6; i++) eventsScreen(),
                  ],
                )),

            Column(
              children: [
                for (var i = 0; i < 4; i++)
                  Row(
                    children: [
                      SizedBox(
                        width: 195,
                        child: FittedBox(
                          child: gridCard(),
                        ),
                      ),
                      SizedBox(
                        width: 195,
                        child: FittedBox(
                          child: gridCard(),
                        ),
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
