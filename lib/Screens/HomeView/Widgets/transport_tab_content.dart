import 'package:flutter/material.dart';
import '../event_search.dart';
import 'home_page_widgets.dart';

class TransportTab extends StatefulWidget {
  const TransportTab({Key? key}) : super(key: key);

  @override
  State<TransportTab> createState() => _TransportTabState();
}

class _TransportTabState extends State<TransportTab> {
  @override
  Widget build(BuildContext context) {
    return Container(child: transportTabContent(),);
  }
}

Widget transportTabContent() {
  return Container(
    color: Colors.white,
    child: Stack(
      children: [
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 6; i++) const cardListScreen(),
                ],
              ),
            ),
            //category viewer
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 6; i++) PopularEvents(),
                  ],
                )),
            const eventTypesScreen(),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  for (var i = 0; i < 4; i++)
                    Row(
                      children: const[
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
              ),
            )
          ],
        ),
        Container(
            margin: const EdgeInsets.only(top: 5, left: 5, bottom: 0),
            child: const eventSearchBar())
      ],
    ),
  );
}
