// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'notification_widgets/notifications_widget.dart';
class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  List<String> butnTag = ['notification', 'search', 'filter', 'Profile'];
  @override
  final notificationbool = 0;
  final btnStatus = 0;
  List <IconData> NotIcons = [
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.airbnb,
  ];

  List <String> Titles = [
    'Booking',
    'profile change',
    'new event'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Notification',
            style: TextStyle(
              color: Colors.teal.shade900,
                fontSize: 22,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body:

            notificationbool == 0 ? notificationViewer() : emptyNotification());
  }

  Widget notificationViewer() {
    return Material(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (var i = 0; i < 4; i++) notificationCard(),
        ],
      ),
    ));
  }

  Widget notificationCard() {
    return Container(
      margin: EdgeInsets.only(top: 5,),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: InkWell(
        onTap: () {

        },
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
                            color: Colors.grey.shade200),
                      ),

                        Container(
                          margin: EdgeInsets.only(top: 15, left: 15),
                          child:
                          Icon(
                            NotIcons[3],
                            color: Colors.red.shade600,
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
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dateTime(),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 70),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal.shade700,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text('New', style: TextStyle(
                                fontSize: 18),)))
                  ],
                ),
                Container(
                  width: 380,
                  margin: EdgeInsets.only(left: 25, right: 5),
                  child: Text(
                    'Last Column Last Column Last Last ColumnLast Column Last',
                    style: TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: 18,),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  


}
