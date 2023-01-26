import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        elevation: 0,
        title: Center(
          child: Text(
            'Your Moments Here',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [ADblok(), MomentsDetail(), MomentsDetail()],
        ),
      )),
    );
  }

  void onheartTap() {
    setState(() {
      Icon(CupertinoIcons.heart_fill);
    });
  }

  Widget MomentsDetail() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 0, left: 10, right: 10),
            margin: EdgeInsets.only(bottom: 5, top: 5),
            width: double.infinity,
            height: height * 0.45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.teal.shade800,
                        child: Text(
                          'A',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Andrew Ansley',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      //Icon()
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.29,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                            height: 150.0,
                            width: 350.0,
                            child: Carousel(
                              autoplay: false,
                              animationDuration: Duration(hours: 1),
                              images: [
                                AssetImage('assets/images/544.png'),
                                AssetImage('assets/images/543.png'),
                                AssetImage('assets/images/542.png'),
                              ],
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.lightGreenAccent,
                              indicatorBgPadding: 5.0,
                              dotBgColor: Colors.transparent,
                              borderRadius: false,
                            )),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 5),
                        child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.heart,
                            )),
                      ),
                      Spacer(),
                      Container(
                        child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.share,
                            )),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '400 Likes',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Andrew Ansley ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '#Concert#Jano#beatles',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  Widget ADblok() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 1.0,
      decoration: BoxDecoration(
          color: Colors.teal.shade100, borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        'Place your ads here',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
