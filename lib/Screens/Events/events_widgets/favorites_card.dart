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
  DateTime now = DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day, now.hour, now.minute);
  return Container(
      margin: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration
        (
          // color: Color(0xffe2ede5),
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
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventsDetail()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 225,
                  decoration: BoxDecoration(
                      // color: Color(0xffe2ede5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
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
                              margin: EdgeInsets.only(top: 10 , left: 10),
                              child: Text('Concert prepared',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green.shade600, fontWeight: FontWeight.w600)))
                        ],
                      ),

                      Row(
                        children: [
                          Container(

                              child: Text('Sun ${date.year}/${date.month}/${date.day}'
                                  ,
                                  style: TextStyle(
                                      fontSize: 18)),
                          margin: EdgeInsets.only(top: 10, left: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                              child: Icon(Icons.location_on_sharp, color: Colors.deepOrange,)),
                          Container(
                              margin: EdgeInsets.only(top: 10),
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
