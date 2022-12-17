// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'Widgets/home_page_widgets.dart';

class HomeFull extends StatelessWidget {
  const HomeFull({super.key});

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
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal.shade800)
    ),
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: greetingContainerScreen(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          bottom: const TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xff004d40),
            indicatorColor: Colors.teal,
            tabs: [
              Tab(

                  child: Text(
                    'Events',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SFPro',
                        ),
                  )),
              Tab(
                  child: Text('Transport',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SFPro',
                          ))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EventTab(),
            transportTabContent()
          ],
        ),
      ),
    ),
  );
}

