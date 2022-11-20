// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:ethiocart/Screens/screens.dart';
import 'package:ethiocart/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
List<String> user_names = ['Andrew Ainsley', 'michael', 'Tolosa', 'demissie'];
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
            greeting_container(),
            //#################__2
            search_field(),
            //#################__3
            category_view(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardList(),
                  Padding(padding: EdgeInsets.only(left: 5)),
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
            Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: CardList(),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: CardList(),
                    ),
                  ),
                ],),
                Row(children: [
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: CardList(),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                    child: FittedBox(
                      child: CardList(),
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
Widget search_field() {
  return Material(
    borderRadius: BorderRadius.circular(18),
    child: Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(18)),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'SFCompact',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                icon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                  size: 35,
                ),
                hintText: 'hint value',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Colors.black12),
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Container greeting_container() {
  return Container(
    width: 200,
    height: 85,
    padding: EdgeInsets.only(top: 0, bottom: 0),
    margin: EdgeInsets.only(bottom: 15, top: 10, right: 0),
    child: Material(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Profile.jpg'),
                      ),
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.only(left: 10, top: 0),
                ),
                Column(
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'SFPro',
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          user_names[0],
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SFPro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 10, left: 105),
                  padding: EdgeInsets.only(bottom: 0),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    child: Stack(
                      children: [
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.bell,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red),
                          margin: EdgeInsets.only(left: 30, top: 10),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Container category_view() {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
    child: Row(
      children: [
        Text(
          'Featured',
          style:
          TextStyle(fontFamily: 'Gotham', letterSpacing: -1, fontSize: 20),
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyle(
              fontFamily: 'Gotham',
              letterSpacing: -1,
              fontSize: 20,
              color: Colors.indigoAccent),
        ),
      ],
    ),
  );
}

Widget event_types() {
  return Material(
    elevation: 0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 30,
      width: 110,
      color: Colors.white,
      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('popular events',
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontFamily: 'Gotham',
                      fontSize: 20)),
              Spacer(),
              Text(
                'see all',
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontFamily: 'Gotham',
                    fontSize: 20),
              ),
            ],
          ),
        ],
      ),
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
        color: Colors.white,
      ),
      child: OutlinedButton.icon(
        icon: Icon(CupertinoIcons.music_note_2, color: Colors.deepPurpleAccent),
        label: Text("Music"),
        onPressed: () => print("it's pressed"),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Colors.deepPurpleAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ));
}

Widget CardList() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
            height: 380,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(children: [
              Material(
                elevation: 0,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 0),
                  height: 270,
                  width: 320,
                  decoration: BoxDecoration(
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
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                      ),
                    ),
                  ),
                  // child: Image(image: AssetImage('assets/images/Image1.png')),
                ),
              ),
              Column(
                children: const [
                  // AspectRatio(aspectRatio: 2/2),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'National Music Festival',
                    style: TextStyle(
                      fontFamily: 'SFCompact',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text('Mon, Dec 24 18:00 - 23:00',
                      style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      )),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text('Grand Park, New York',
                      style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      )),
                ],
              )
            ]),
          ),
        ],
      )
    ],
  );
}

Widget events_grid() {
  return Container(
    color: Colors.black,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 180,
            height: 240,
            margin: EdgeInsets.only(right: 5, bottom: 10, left: 5, top: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Text(
                  'Art Workshop',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'data',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SFPro',
                  ),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 240,
            margin: EdgeInsets.only(left: 0, bottom: 10, top: 5, right: 5),
            decoration: BoxDecoration(
                //Color(0xff002f24),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 160,
                    height: 160,
                    margin: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Text(
                  'Music Concert',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


