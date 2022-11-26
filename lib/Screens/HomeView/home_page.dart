// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/widgets.dart';

class homeFull extends StatelessWidget {
  const homeFull({super.key});

  @override
  Widget build(BuildContext context) {
    return TabView();
  }
}

var notification = "notification";

List<String> button_values = ['music', 'art', 'workshop'];
final List<Map> gvt =
    List.generate(2, (index) => {"id": index, "name": "Product $index"})
        .toList();
Widget TabView() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: greetingContainerScreen(),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.indigoAccent,
            tabs: [
              Tab(
                  child: Text(
                'Events',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text('Transport',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        body: TabBarView(
          children: [tabContent(), tabContent()],
        ),
      ),
    ),
  );
}

Scaffold tabContent() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Container(
        color: Color(0xffFAF9F6),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            searchFieldScreen(),
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
            //#########___7

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
