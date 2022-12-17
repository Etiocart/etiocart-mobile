import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketDetail extends StatefulWidget {
  const TicketDetail({Key? key}) : super(key: key);

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Ticket'),
      ),
      body: DetailCard(),
    );
  }

  Widget DetailCard() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  QRandEventInfo(),
                ],
              ),
              PayerInfo(),
              PaymentSeats(),
              PaymentOrderInfo(),
              DownLoadTicketButton()
            ],
          ),
        ],
      ),
    );
  }

  Container QRandEventInfo() {
    return Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                        child: Center(
                          child: QrImage(
                            data: "1234567890",
                            version: QrVersions.auto,
                            size: 200.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Event',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade500),
                                )
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text('National Music Festival',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Date and Hour',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade500))
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text('Monday, Dec 24, 18:00 - 22:00',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Event Location',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade500))
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text('GrandPark, NewYork City US',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Event Organizer',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade500))
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text('World Of Music',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
  }

  Container PayerInfo() {
    return Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Full name',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 18),
                            ),
                            Spacer(),
                            Text('Andrew Ansley', style: TextStyle(fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          children: [
                            Text('User Name',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('Andi', style: TextStyle(fontSize: 18))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Gender',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('Male',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Date of Birth',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('12/27/1998',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Country',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('Ethiopia',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Phone',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('+251 919 894576',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Email',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('andre_ansley@gmail.com',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        )),
                  ],
                ),
              ),
            );
  }

  Container PaymentSeats() {
    return Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              '1 seat',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 18),
                            ),
                            Spacer(),
                            Text('50.00', style: TextStyle(fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          children: [
                            Text('Tax',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('5.00', style: TextStyle(fontSize: 18))
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      height: 1,
                      width: double.infinity,
                      color: Colors.black54,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Total',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('55.00',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20))
                          ],
                        )),
                  ],
                ),
              ),
            );
  }

  Container PaymentOrderInfo() {
    return Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Payment Methods',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 18),
                            ),
                            Spacer(),
                            Text('Awash Bank', style: TextStyle(fontSize: 20))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Order ID',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('5457382949', style: TextStyle(fontSize: 18))
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text('Status',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                            Spacer(),
                            Text('Paid',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20))
                          ],
                        )),
                  ],
                ),
              ),
            );
  }

  Container DownLoadTicketButton() {
    return Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              margin:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 25),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.deepPurpleAccent.shade700),
                  elevation: MaterialStateProperty.all(12),
                ),
                child: Text('Download Ticket', style: TextStyle(fontSize: 18),),
              ),
            );
  }
}
