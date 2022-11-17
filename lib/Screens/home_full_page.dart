// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:ethiocart/Screens/screens.dart';
import 'package:ethiocart/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class featured extends StatelessWidget {
  const featured({super.key});

  @override
  Widget build(BuildContext context) {
    return appbar_custom();
  }
}

var notification = "notification";

//dynamic data for rendering with builder
List<String> app_bar_titles = ['notification', 'search', 'filter', 'Profile'];
List<String> user_names = ['John Doe', 'michael', 'Tolosa', 'demissie'];
List<String> button_values = ['music', 'art', 'workshop'];
final List<Map> gvt =
    List.generate(2, (index) => {"id": index, "name": "Product $index"})
        .toList();

Widget appbar_custom() {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
        scrollDirection: Axis.vertical,
        children: [
          //#################__1
          greeting_container(),
          //#################__2
          search_field(),
          //#################__3
          category_view(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //################__4
                CardList(),
                Padding(padding: EdgeInsets.only(left: 10)),
                CardList(),
                CardList(),
              ],
            ),
          ),
          //####################__5
          event_types(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //#################___6
                  events(),
                  events(),
                  events(),
                  events(),
                ],
              )),
          //#########___7
          event_types(),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  //#################___6
                  events_grid(),
                  events_grid(),
                  events_grid(),
                ],
              ))
        ],
      ),
    ),
  );
}

Container category_view() {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
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
  );
}

Container greeting_container() {
  return Container(
    width: 200,
    height: 100,
    padding: EdgeInsets.only(top: 0, bottom: 0),
    margin: EdgeInsets.only(bottom: 15, top: 10),
    child: Material(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                margin: EdgeInsets.only(right: 5),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'SFCompact',
                  color: Colors.black,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 5, left: 190),
                padding: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                user_names[0],
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SFCompact',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget event_types() {
  return Container(
    height: 20,
    width: 100,
    color: Colors.white,
    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
    child: Column(
      children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
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
        ),
      ],
    ),
  );
}

Widget events() {
  return Container(
    margin: EdgeInsets.only(right: 10, top: 20, bottom: 20),
    height: 45,
    width: 130,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
    ),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(button_values[0]),
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: const Color(0xff1e88e5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}

Widget CardList() {
  return Column(
    children: [
      Row(
        children: [
          Material(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
              height: 370,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent,
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black45,
                        blurRadius: 20.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  // child: Image(image: AssetImage('assets/images/Image1.png')),
                ),
                Column(
                  children: const [
                    // AspectRatio(aspectRatio: 2/2),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(
                      'National Music Festival',
                      style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text('Mon, Dec 24 18:00 - 23:00',
                        style: TextStyle(
                          fontFamily: 'SFCompact',
                          fontSize: 15,
                          color: Colors.blueAccent,
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text('Grand Park, New York',
                        style: TextStyle(
                          fontFamily: 'SFCompact',
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ],
                )
              ]),
            ),
          ),
        ],
      )
    ],
  );
}

Widget search_field() {
  return Material(
    child: Container(
      width: 400,
      height: 50,
      margin: EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 350,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(35)),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'SFCompact',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.search_sharp,
                  size: 35,
                ),
                hintText: 'hint value',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Colors.black12),
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget events_grid() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          width: 190,
          height: 200,
          margin: EdgeInsets.only(right: 5, bottom: 10, left: 5, top: 10),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
            ],
          ),
        ),
        Container(
          width: 190,
          height: 200,
          margin: EdgeInsets.only(left: 5, bottom: 10, top: 10),
          decoration: BoxDecoration(
              //Color(0xff002f24),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
              Text(
                'data',
                style: TextStyle(color: Colors.black, fontFamily: 'SFCompact'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
