// ignore_for_file: non_constant_identifier_names

import 'package:ethiocart/Screens/screens.dart';
import 'package:ethiocart/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class featured extends StatelessWidget {
  const featured({super.key});

  @override
  Widget build(BuildContext context) {
    return appbar_custom();
  }
}

var notification = "notification";

List<String> app_bar_titles = ['notification', 'search', 'filter', 'Profile'];
List<String> user_names = ['john', 'michael', 'Tolosa', 'demissie'];

Widget appbar_custom() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: tab_bar(),
    ),
    body: ListView(
      padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
      scrollDirection: Axis.vertical,
      children: [
        search_field(),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
          child: Row(
            children: [
              Text(
                'Featured',
                style: TextStyle(
                    fontFamily: 'SFCompact', letterSpacing: -1, fontSize: 15),
              ),
              Spacer(),
              Text(
                'See All',
                style: TextStyle(
                    fontFamily: 'SFCompact',
                    letterSpacing: -1,
                    fontSize: 15,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardList(),
              CardList(),
              CardList(),
            ],
          ),
        ),
        event_types()
      ],
    ),
  );
}

Widget event_types() {
  return Container(
    height: 100,
    width: 100,
    color: Colors.white,
    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
    child: Column(
      children: [
        Row(
          children: [
            Text('popular events', style: TextStyle(fontFamily: 'SFCompact')),
            Spacer(),
            Text(
              'see all',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'SFCompact',
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget CardList() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 5),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
              ),
              Text('col1'),
              Text('data'),
            ]),
          ),
        ],
      )
    ],
  );
}

Widget tab_bar() {
  return Container(
    padding: EdgeInsets.only(left: 0),
    child: Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black12,
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SFCompact',
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  user_names[0],
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.bell,
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget search_field() {
  return Material(
    child: Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black12,
      ),
      child: Column(
        children: [],
      ),
    ),
  );
}

// Widget card_grid_view(){return GridView.builder(gridDelegate: , itemBuilder: )}


