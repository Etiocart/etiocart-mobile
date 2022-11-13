// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

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


//dynamic data for rendering with builder
List<String> app_bar_titles = ['notification', 'search', 'filter', 'Profile'];
List<String> user_names = ['John Doe', 'michael', 'Tolosa', 'demissie'];
List<String> button_values = ['music', 'art', 'workshop'];
final List<Map> gvt =
    List.generate(2, (index) => {"id": index, "name": "Product $index"})
        .toList();

Widget appbar_custom() {
  return Scaffold(
    // appBar: AppBar(backgroundColor: Colors.white,),
    body: SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 0),
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
          Container(child: Text('Container'),),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  //#################___6
                  events_grid(),
                  events_grid(),
                  events_grid(),
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
        );
}

Container greeting_container() {
  return Container(color: Colors.white,width: 200, height: 100,
        padding:EdgeInsets.only(top: 5, bottom: 0),
        margin: EdgeInsets.only(bottom: 10),
        child:       Column(
          children: [
            Row(
              children:  [
                Container(width: 50, height: 50,
                  decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(50)
                ),
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

                Container(width:50, height: 50,
                  margin: EdgeInsets.only(right: 5,left: 190),
                  padding: EdgeInsets.only(bottom: 0),
                  decoration: BoxDecoration(color: Colors.black12,
                      borderRadius: BorderRadius.circular(50),
                  )
                  ,child:Column(
                    children: [
                      IconButton(icon: Icon(Icons.notifications, color: Colors.black,
                        size: 30,)
                        , onPressed: () {},),
                    ],
                  )
                  ,)
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
        ),);
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
      color: Colors.black12,
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
          Container(
            margin: EdgeInsets.only(top: 0, left: 5),
            height: 370,
            width: 340,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
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
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue,
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

Widget events_grid(){return SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   Row(children: [Container(width: 190, height: 200,
    margin: EdgeInsets.only(right: 5, bottom: 10),

    decoration: BoxDecoration(color: Colors.deepPurple,

        borderRadius: BorderRadius.circular(25)

    ),),
    Container(width: 190, height: 200,
      margin: EdgeInsets.only(left: 5,bottom: 10),

      decoration: BoxDecoration(color: Colors.deepPurple,

          borderRadius: BorderRadius.circular(25)

      ),),],),
);}



// Widget events_grid_view() {
//   return CustomScrollView(
//     primary: false,
//     slivers: <Widget>[
//       SliverPadding(
//         padding: const EdgeInsets.all(20),
//         sliver: SliverGrid.count(
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[100],
//               child: const Text("He'd have you all unravel at the"),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[200],
//               child: const Text('Heed not the rabble'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[300],
//               child: const Text('Sound of screams but the'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[400],
//               child: const Text('Who scream'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[500],
//               child: const Text('Revolution is coming...'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               color: Colors.green[600],
//               child: const Text('Revolution, they...'),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
//
// Widget grid_view_builder() {
//   return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//
//           maxCrossAxisExtent: 210,
//           childAspectRatio: 9 / 12,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10),
//       itemCount: gvt.length,
//       itemBuilder: (BuildContext ctx, index) {
//         return Container(
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: Colors.black12,
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Text(gvt[index]["name"]),
//         );
//       });
// }
//
// Widget grid_view() {
//   return SingleChildScrollView(
//     child: Container(
//       margin: EdgeInsets.only(top: 10, left: 20, right: 20),
//       height: 240,
//       width: 90,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//       ),
//       child: grid_view_builder(),
//     ),
//   );
// }


// Widget card_grid_view(){return GridView.builder(gridDelegate: , itemBuilder: )}


