// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'notification_widgets/notifications_widget.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final List<String> butnTag = ['notification', 'search', 'filter', 'Profile'];
  final notificationbool = 0;
  final btnStatus = 0;
  final List<IconData> notIcons = [
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.info,
    FontAwesomeIcons.airbnb,
  ];

  final List<String> titles = ['Booking', 'profile change', 'new event'];

  @override
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ListView.builder(
    itemCount: 4,
    shrinkWrap: true,
    itemBuilder: (context, index,) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: notificationCard(context),
    );
      },)
    );
  }

  Widget notificationCard(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 0,
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
                    Stack(
                        children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade200),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.green.shade600,
                          size: 30,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notification Title',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 22,
                                  color: Colors.teal.shade700,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              dateTime(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Expanded(
                    child: Container(
                      width: width*0.8,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children:  [
                          Expanded(
                            child: Text(
                              'this is a notification text that works',
                              style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 18,
                                color: Colors.grey.shade700
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Text('Notifcation Type')
                        ],
                      ),
                    ),
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
