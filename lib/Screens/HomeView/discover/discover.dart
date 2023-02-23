// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:ethiocart/Screens/HomeView/transport_detail.dart';
import 'package:flutter/material.dart';
import '../../Search/search_delegate.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'service/jsontestmodel.dart';

class Feed extends StatefulWidget {
  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];

  late bool _isloading = false;
  @override
  void initState() {
    _isloading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }

  bool notif = true;
  void NotifColor() {
    setState(() {
      notif = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(context);
  }

  Widget HomeView(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.teal.shade900,
            elevation: 0,
            actions: [
              Row(
                children: [
                  InkWell(
                      child: Icon(
                    Icons.notifications,
                    color: notif ? Colors.red : Colors.green,
                    size: 30,
                  )),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Center(
                    child: Text(
                      'Discover',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 230)),
                  IconButton(
                      onPressed: () {
                        showSearch(context: context, delegate: CustomSearch());
                      },
                      icon: Icon(
                        Icons.search,
                        size: 30,
                      )),
                ],
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (_isloading)
                IconAvatarListSkeleton(height)
              else
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: IconAvatarList(height),
                ),
              if (_isloading)
                Container(
                  height: height * 0.64,
                  child: ListView.builder(
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [FeedViewSkeleton()],
                        );
                      }),
                )
              else
                Container(
                  height: height * 0.67,
                  child: ListView.builder(
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [FeedView()],
                        );
                      }),
                )
            ],
          )),
    );
  }

  Container IconAvatarList(double height) {
    return Container(
      height: height * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconAvatar(
                    TransportDetail(), 'event', Icons.directions_bus_rounded),
                Padding(padding: EdgeInsets.only(left: 5)),
                IconAvatar(TransportDetail(), 'transport', Icons.settings),
                Padding(padding: EdgeInsets.only(left: 5)),
                IconAvatar(TransportDetail(), 'auction', Icons.car_crash),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container IconAvatarListSkeleton(double height) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10),
      height: height * 0.16,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconAvatarSkeleton(),
                Padding(padding: EdgeInsets.only(left: 6)),
                IconAvatarSkeleton(),
                Padding(padding: EdgeInsets.only(left: 6)),
                IconAvatarSkeleton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell IconAvatar(var type, String name, IconData eveIcon) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final ictype = type;
    final typename = name;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ictype),
        );
      },
      child: Container(
        width: width * 0.3,
        height: height * 0.12,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Column IconAvatarSkeleton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var index = 0;
    return Column(
      children: [
        Container(
          width: width * 0.3,
          height: height * 0.12,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }

  Widget FeedView() {
    var size = MediaQuery.of(context).size.aspectRatio;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.95,
      height: height * 0.16,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: width * 0.35,
                height: height * 0.16,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/concert 3.jpg')),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 0),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:140),
                      child: Text(
                        'Title',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 0),
                child: Text(
                  'Event date and time',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 0),
                child: Text(
                  'Event Location',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Text(
                      '400 birr',
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget FeedViewSkeleton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: width * 0.95,
        height: height * 0.15,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.35,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: width * 0.57,
                    height: height * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: width * 0.56,
                    height: height * 0.02,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: width * 0.45,
                    height: height * 0.02,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
