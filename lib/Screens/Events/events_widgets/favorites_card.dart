// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Tickets/ticket_widgets/ticketdetail.dart';

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
      padding: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      width: double.infinity,
      height: height*0.2,
      decoration: BoxDecoration
        (
          color: Colors.white,
          border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
          topRight: Radius.circular(15))
      ),
      child: Row(children: [
        Column(
          children: [
            Expanded(
              child: Container(
                width: width * 0.4,
                decoration: BoxDecoration(color: Colors.teal.shade800.withOpacity(1),
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
                    MaterialPageRoute(builder: (context) => PendingTickets()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  width: height*0.25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text(
                        'Traditional Dance Concert',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 22,
                        fontWeight: FontWeight.w600),
                      ),
                      Text('Concert prepared',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, color: Colors.green.shade600, fontWeight: FontWeight.w600)),

                      Text('Sun ${date.year}/${date.month}/${date.day}',
                          style: TextStyle(
                              fontSize: 18)),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp, color: Colors.deepOrange,),
                          Text('Bole, Millenium',
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontSize: 18))
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
