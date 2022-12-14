// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'ticket_detail.dart';
import 'tickets_widget.dart';
final statusValue = false;

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: UpcomingTicket(context),);
  }


  Widget UpcomingTicket(context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.only(right: 0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    )
                  ],
                )
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
                        MaterialPageRoute(
                            builder: (context) => TicketDetail()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 225,
                      decoration: BoxDecoration(color: Colors.white),
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
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Concert prepared',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.green.shade600,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),

                          Row(
                            children: [
                              Container(

                                child: Text('Sunday'
                                    ,
                                    style: TextStyle(
                                        fontSize: 18)),
                                margin: EdgeInsets.only(top: 10, left: 10),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 10, right: 5, left: 5),
                                  child: Icon(Icons.location_on_sharp,
                                    color: Colors.deepOrange,)),
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
          ],
        ),
      ),
    );
  }

}
