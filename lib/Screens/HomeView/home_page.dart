// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/home_page_widgets.dart';

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
          children: [
            tabContent(),
            tabContent(),
          ],
        ),
      ),
    ),
  );
}
