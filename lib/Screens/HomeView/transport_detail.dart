import 'package:ethiocart/Screens/transport/transport_booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransportDetail extends StatefulWidget {
  const TransportDetail({Key? key}) : super(key: key);

  @override
  State<TransportDetail> createState() => _TransportDetailState();
}

class _TransportDetailState extends State<TransportDetail> {
  @override
  Widget build(BuildContext context) {
    return TransportPage();
  }

  Widget TransportPage() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Transport',
          style: TextStyle(),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Body(context),
    );
  }

  Widget Body(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Travel Detail',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Thursday, july 16, 2020',
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: EdgeInsets.only(left: 25, right: 25),
                                  child: Icon(
                                    CupertinoIcons.bus,
                                    color: Colors.grey,
                                  )),
                              Text('Addis Ababa',
                                  style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Column(
                            children: [
                              Text('Departure'),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                height: 60,
                                width: 2,
                                color: Colors.black54,
                              ),
                              Text('Destination')
                            ],
                          ),
                          Row(
                            children: [
                              Text('Saturday, july 18, 2020',
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  child: Icon(CupertinoIcons.location_fill,
                                      color: Colors.grey)),
                              Text('Adama', style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1250 ETB',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 50),
                              ),
                              Text(
                                'Baggae Allowance',
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 1,
                                color: Colors.black,
                              ),
                              Spacer(),
                              Text('No additional fee upto',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'SFPro'))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: [
                              Text('Provider', style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('selam sc.', style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 1,
                                width: 360,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: [
                              Text('No Baggage fee upto',
                                  style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('10 Kilograms.',
                                  style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 1,
                                width: 360,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: [
                              Text('Refund', style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('No Refund.', style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 40),
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              'Booking a Ticket',
                              style: TextStyle(fontSize: 18),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 20,
                              width: 1,
                              color: Colors.black,
                            ),
                            Text('',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'SFPro'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 260,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TransportBooking()),
                                  );
                                },
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.teal.shade700),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Text(
                                  'Buy Ticket',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
