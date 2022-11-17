import 'package:flutter/material.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  final  notificationbool = 1;
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
      ),
      body: notificationViewer(),);
  }

  Widget notificationViewer(){
    return Material(
      color: Colors.black12,
      child: Column(
          children: [
            if(notificationbool==0)...[
              emptyNotification()
            ]else...[
              Container(
                margin: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                    children: [notificationCard(),notificationCard(),]),
              )
            ]
          ]),
    );
  }

  Widget notificationCard() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(25)
        ),
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 15, left: 0, right: 5),
              child: Row(children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 40, height: 40, decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50)),),
          Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Column(children: [
                  Text('Booking Successful', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Text('20 Dec 2022 | 20:49 PM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),)],)),
          Text(overflow: TextOverflow.fade,'timestamp'),
        ],),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 100),
                child:
                Text('''
                Details of your booking Details 
                of your booking Details of your booking
                of your booking of your booking
                of your booking''', softWrap: false,
                style: TextStyle(),
                )),
          ],),
      ),
    );
  }

  Widget emptyNotification() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Empty',
              style: TextStyle(
                  fontFamily: 'SFCompact',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'You dont have any notifications at this timt',
              style: TextStyle(
                  fontFamily: 'SFCompact',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
