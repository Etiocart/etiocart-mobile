// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import '../bottom_nav_screen.dart';
import 'Widgets/home_page_widgets.dart';

class Feed extends StatefulWidget {
  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];
  @override
  Widget build(BuildContext context) {
    return HomeView();
  }

  Widget HomeView() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.teal.shade900,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Container(
                padding: EdgeInsets.only(top: 5, left: 10),
                height: height * 0.22,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconAvatar(),
                          Padding(padding: EdgeInsets.only(left: 60)),
                          IconAvatar(),
                          Padding(padding: EdgeInsets.only(left: 60)),
                          IconAvatar(),
                      ],),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      IconAvatar(),
                        Padding(padding: EdgeInsets.only(left: 60)),
                      IconAvatar(),
                        Padding(padding: EdgeInsets.only(left: 60)),
                      IconAvatar(),
                    ],)
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.55,
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                return FeedView();
              }),
            )
          ],
        ));
  }

  Column IconAvatar() {
    var index=0;
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey.shade200,
          child: Center(
            child: Icon(Icons.access_time, size: 30,)
          ),
        ),
        Text(_posts[index])
      ],
    );
  }

  Widget FeedView() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * 0.9,
        height: height * 0.15,
        decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
