// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'notification_widgets/notifications_widget.dart';
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
      child: Column(
        children: [
          for (var i = 0; i < 6; i++) notificationCard(),
        ],
      ),
    ));
  }

  

  


}
