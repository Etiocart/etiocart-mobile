import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [ForYou(), ForYou()],
    ));
  }

  void onheartTap() {
    setState(() {
      Icon(CupertinoIcons.heart_fill);
    });
  }

  Widget ForYou() {
    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            margin: EdgeInsets.only(bottom: 5, top: 5),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(0)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
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
                        width: 360,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(0)),
                        child: SizedBox(
                            height: 150.0,
                            width: 350.0,
                            child: Carousel(
                              autoplay: false,
                              animationDuration: Duration(hours: 1),
                              images: [
                                AssetImage('assets/images/540.png'),
                                AssetImage('assets/images/540.png'),
                                AssetImage('assets/images/540.png'),
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
}
