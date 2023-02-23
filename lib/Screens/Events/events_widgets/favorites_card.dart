// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Tickets/ticket_widgets/pending_ticket.dart';

import 'events_widget.dart';
import 'package:flutter/material.dart';

class FavoritesCard extends StatefulWidget {
  const FavoritesCard({Key? key}) : super(key: key);

  @override
  State<FavoritesCard> createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  late bool _isloading = false;
  @override
  void initState() {
    _isloading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    if(_isloading)
    return
      Container(
      color: Colors.black.withOpacity(0.08),
      child: Column(
        children: [
          SizedBox(
            width: width * 1,
            height: height * 0.9,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return mainSkeletonCard(context);
              },
            ),
          )
        ],
      ),
    );
    else {
      return Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              width: width * 1,
              height: height * 0.9,
              child: RefreshIndicator(
                displacement: height*0.05,
                edgeOffset: height*0.005,
                onRefresh: () async {
                  await Future.delayed(Duration(milliseconds: 1500));
                  setState(() {

                  });
                },
                child: ListView.builder(
                  physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PendingTickets()),
                      );
                    },
                        child: mainCard(context));
                  },
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}

Widget mainCard(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  DateTime now = DateTime.now();
  DateTime date =
      new DateTime(now.year, now.month, now.day, now.hour, now.minute);
  return Container(
      padding: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      width: double.infinity,
      height: height * 0.18,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(0))),
      child: Row(children: [
        Column(
          children: [
            Container(
              width: width * 0.35,
              height: height * 0.16,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      'Prepared by',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: const [
                        Text('Simply dummy',
                            //Text('simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500',
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${date.year}/${date.month}/${date.day}',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue.shade700)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icon(
                        //   Icons.location_on_sharp,
                        //   color: Colors.deepOrange,
                        //   size: 30,
                        // ),
                        Text('Bole, Millenium Hall',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade700))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]));
}

Widget mainSkeletonCard(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  DateTime now = DateTime.now();
  DateTime date =
      new DateTime(now.year, now.month, now.day, now.hour, now.minute);
  return Container(
      padding: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      width: double.infinity,
      height: height * 0.18,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(0))),
      child: Row(children: [
        Column(
          children: [
            Container(
              width: width * 0.35,
              height: height * 0.16,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                        width: width * 0.3,
                        height: height * 0.02,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(10))),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                      children: [
                        Container(
                          width: width * 0.55,
                          height: height * 0.04,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.06),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                      children: [
                        Container(
                            width: width * 0.4,
                            height: height * 0.02,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.06),
                                borderRadius: BorderRadius.circular(10)))
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: width * 0.3,
                            height: height * 0.04,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.06),
                                borderRadius: BorderRadius.circular(10)))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]));
}
