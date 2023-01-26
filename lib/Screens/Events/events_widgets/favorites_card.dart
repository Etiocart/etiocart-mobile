// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'events_widget.dart';
import 'package:flutter/material.dart';

class FavoritesCard extends StatefulWidget {
  const FavoritesCard({Key? key}) : super(key: key);

  @override
  State<FavoritesCard> createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [mainCard(context)],
    );
  }
}

Widget mainCard(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  DateTime now = DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day, now.hour, now.minute);
  return Container(
      margin: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      width: double.infinity,
      height: height*0.21,
      decoration: BoxDecoration
        (
          color: Colors.white,
          border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20))
      ),
      child: Row(children: [
        Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                width: height*0.17,
                decoration: BoxDecoration(color: Colors.teal.shade800,
                borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventsDetail()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: height*0.25,
                  decoration: BoxDecoration(
                      // color: Color(0xffe2ede5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                            'Traditional Dance ',
                            overflow: TextOverflow.fade,
                            style: TextStyle(fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10 , left: 10),
                              child: Text('Concert prepared',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green.shade600, fontWeight: FontWeight.w600)))
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                              child: Text('Sun ${date.year}/${date.month}/${date.day}',
                                  style: TextStyle(
                                      fontSize: 18)),
                          padding: EdgeInsets.only(top: 10, left: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10, right: 5, left: 5),
                              child: Icon(Icons.location_on_sharp, color: Colors.deepOrange,)),
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Bole, Millenium',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 18)))
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Container(
                              child: Text('Booked',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue))),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ]));
}
