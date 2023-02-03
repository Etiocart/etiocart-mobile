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
      padding: EdgeInsets.all(10),
      child: CompletedTicket(context),
    );
  }
}

CompletedTicket(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      width: double.infinity,
      height: height * 0.2,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 10, right: 10, top: 8),
                child: Container(
                  height: height * 0.18,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TicketDetail()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                            child: Text(
                              'Traditional Dance Concert',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                      Flexible(
                        child: Container(
                          child: Text('Concert prepared',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal.shade900,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),

                      Text('Sunday Dec 30'
                          ,
                          style: TextStyle(
                              fontSize: 15)),
                      Row(
                        children: [
                          Text('Bole, Millenium Hall',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 15)),
                          Icon(Icons.location_on_sharp,
                            color: Colors.deepOrange,),

                        ],
                      ),
                    ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
