// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'notification_widgets/notifications_widget.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  List<String> butnTag = ['notification', 'search', 'filter', 'Profile'];
  @override
  final notificationbool = 0;
  final btnStatus = 0;
  List<IconData> NotIcons = [
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.airbnb,
  ];

  List<String> Titles = ['Booking', 'profile change', 'new event'];

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Notification',
            style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 22,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ))],
        ),
        body:
            notificationbool == 0 ? notificationViewer(context) : emptyNotification());
  }

  Widget notificationViewer(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          notificationCard(context),
          notificationCard(context),
        ],
      ),
    ));
  }

  Widget notificationCard(BuildContext context)
  {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: 0,
      ),
      width: double.infinity,
      height: height*0.16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Colors.white,
          child: Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          padding: EdgeInsets.only(top: 15, left: 15),
                          child: Icon(
                            Icons.note,
                            color: Colors.grey.shade600,
                            size: 30,
                          ),
                        ),
                      ]),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'text1',
                                overflow: TextOverflow.ellipsis,
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
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: width*0.8,
                      padding: EdgeInsets.only(left: 25, right: 5),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'this is a notification text that works',
                              style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
