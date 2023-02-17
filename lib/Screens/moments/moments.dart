import 'package:carousel_pro/carousel_pro.dart';
import 'package:ethiocart/Screens/moments/moments_skeletons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'moments_skeletons.dart';

import '../Search/search_delegate.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments>
{
  final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];

  late bool _isloading = false;
  @override
  void initState() {
    _isloading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        elevation: 0,
        title: const Center(
          child: Text(
            'Your Moments Here',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child:  ListView(
          children: [
            Column(children: [
              if(_isloading)
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: ADblokSkelton())
              else
                Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: ADblok()),
              if(_isloading)
                SizedBox(
                  height: height * 0.572,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return MomentsSkeleton();
                    },
                  ),
                )
              else (SizedBox(
                height: height * 0.572,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Momentos();
                  },
                ),
              )),
              // Momentos(),
              // Momentos(),
            ]),
          ],
        ),
      ),
    );
  }

  Widget Momentos() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 0, left: 10, right: 10),
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
                          color: Colors.teal.withOpacity(0.09),
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(
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
                            ' ',
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
    );
  }

  Widget ADblok() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.25,
      width: width * 1.0,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent.withOpacity(0.09), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        'Place your ads here',
        style: TextStyle(fontSize: 22),
      )),
    );
  }

  Widget ADblokSkelton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.25,
      width: width * 1.0,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04), borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
            'Place your ads here',
            style: TextStyle(fontSize: 25),
          )),
    );
  }
}
