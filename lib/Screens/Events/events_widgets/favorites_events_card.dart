// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
// import 'package:ethiocart/Screens/Tickets/ticket_widgets/ticket_info_detail.dart';
// import 'package:ethiocart/Screens/tickets/ticket_widgets/ticket_info_detail.dart';
import 'package:flutter/material.dart';

import '../../Tickets/ticket_widgets/ticket_info_detail.dart';

class FavoritesEventsCard extends StatefulWidget {
  const FavoritesEventsCard({Key? key}) : super(key: key);

  @override
  State<FavoritesEventsCard> createState() => _FavoritesEventsCardState();
}

class _FavoritesEventsCardState extends State<FavoritesEventsCard> {
  // a variable that holds the _isloading value to set shimmer loading first
  late bool _isloading = false;
  @override
  void initState() {
    // this function implements the loading function's set state
    // set the variable to true first
    _isloading = true;
    // wait for 2 seconds and set the _isloading variable back to false
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // checks the variable's value
    // and if it is false it shows main screen else the skeleton
    if (_isloading) {
      return Container(
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
    } else {
      return Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              width: width * 1,
              height: height * 0.9,
              child: RefreshIndicator(
                displacement: height * 0.05,
                edgeOffset: height * 0.005,
                onRefresh: () async {
                  await Future.delayed(Duration(milliseconds: 1500));
                  setState(() {});
                },
                child: ListView.builder(
                  physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          //TESTING FOR TICKET
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => TicketInformationDetail(data: data, id: id)),
                          // );
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

mainCard(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
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
                        Text('date and time of event',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue.shade700)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
