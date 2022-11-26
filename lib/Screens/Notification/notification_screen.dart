import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  List<String> butnTag = ['notification', 'search', 'filter', 'Profile'];
  @override
  final notificationbool = 0;
  final btnStatus = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
        ),
        body:
            notificationbool == 0 ? notificationViewer() : emptyNotification());
  }

  Widget notificationViewer() {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          notificationCard(),
          notificationCard(),
          notificationCard(),
          notificationCard(),
          notificationCard(),
          notificationCard(),],),)
    );
  }

  Widget emptyNotification() {
    return Material(
      child: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/vector.jpg'),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      'Empty',
                      style: TextStyle(fontSize: 25, fontFamily: 'SFPro'),
                    )),
                    Container(
                      child: Text(
                        'you dont have any notifications at this time',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20, fontFamily: 'SFPro'),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget notificationCard() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Card(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black12),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Icon(
                        CupertinoIcons.calendar_today,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Text(
                          'Booking Successful!',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        dateTime(),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 70),
                      child:
                          ElevatedButton(onPressed: () {},
                              style:
                              ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Text('New')))
                ],
              ),
              Container(
                width: 380,
                margin: EdgeInsets.only(left: 25, right: 5),
                child: Text(
                  'Last Column Last Column Last Last ColumnLast Column Last',
                  style: TextStyle(fontFamily: 'SFPro', fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget dateTime() {
    String dateOBDCommand = '2021-07-13T13:15:54.000000Z';
    DateTime date = DateTime.parse(dateOBDCommand);
    String result = DateFormat('yyyy-MM-dd H:m:s').format(date);
    return Text(result.toString(),
        style: TextStyle(
          fontFamily: 'SFPro',
          fontSize: 16,
          fontWeight: FontWeight.bold,
            color: Colors.black45
        ));
  }
}
