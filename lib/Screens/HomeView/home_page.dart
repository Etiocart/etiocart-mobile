// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/widgets.dart';


class homeFull extends StatelessWidget {
  const homeFull({super.key});

  @override
  Widget build(BuildContext context) {
    return appbar_custom();
  }
}

var notification = "notification";

//dynamic data for rendering with builder
List<String> app_bar_titles = ['notification', 'search', 'filter', 'Profile'];

List<String> button_values = ['music', 'art', 'workshop'];
final List<Map> gvt =
    List.generate(2, (index) => {"id": index, "name": "Product $index"})
        .toList();

Widget appbar_custom() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Container(
        color: Color(0xffFAF9F6),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //#################__1
            greetingContainerScreen(),
            //#################__2
            searchFieldScreen(),
            //#################__3
            categoryViewScreen(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cardListScreen(),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  cardListScreen(),
                  cardListScreen(),
                ],
              ),
            ),
            //####################__5
            eventTypesScreen(),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //#################___6
                    eventsScreen(),
                    eventsScreen(),
                    events(),
                    events(),
                  ],
                )),
            //#########___7
            eventTypesScreen(),
            Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: cardListScreen(),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: cardListScreen(),
                    ),
                  ),
                ],),
                Row(children: [
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: cardListScreen(),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: cardListScreen(),
                    ),
                  ),
                ],),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
