// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'ticket_detail.dart';
import 'tickets_widget.dart';

class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CompletedTicket(context),
    );
  }
}

CompletedTicket(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
    height: height * 0.19,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
    child: Container(
      width: double.infinity,
      height: height * 0.16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.35,
                    height: height * 0.16,
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
                      MaterialPageRoute(builder: (context) => TicketDetail()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    width: width * 0.5,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Traditional Dance ',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
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
                              child: Text('Sunday',
                                  style: TextStyle(fontSize: 18)),
                              padding: EdgeInsets.only(top: 10, left: 10),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                padding:
                                    EdgeInsets.only(top: 10, right: 5, left: 5),
                                child: Icon(
                                  Icons.location_on_sharp,
                                  color: Colors.deepOrange,
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('Bole, Millenium',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(fontSize: 18)))
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
