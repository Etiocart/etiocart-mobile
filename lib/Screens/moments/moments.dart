import 'package:carousel_pro/carousel_pro.dart';
import 'package:ethiocart/Screens/moments/moments_skeletons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Search/search_delegate.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  // final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        elevation: 0,
        title: Row(
          children:  const [
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: const ImageIcon(
                  color: Colors.black,
                  size: 25,
                  AssetImage('assets/icons/Search.png',
                  )
              )
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(children: [
              if (_isloading)
                Padding(padding: const EdgeInsets.all(8.0), child: adblokSkelton())
              else
                Padding(padding: const EdgeInsets.all(8.0), child: adblok()),
              if (_isloading)
                SizedBox(
                  height: height * 0.572,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const MomentsSkeleton();
                    },
                  ),
                )
              else
                (SizedBox(
                  height: height * 0.68,
                  child: RefreshIndicator(
                    displacement: height*0.05,
                    edgeOffset: height*0.005,
                    onRefresh: () async {
                      await Future.delayed(const Duration(milliseconds: 1500));
                      setState(() {});
                    },
                    child: ListView.builder(
                      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return momentos();
                      },
                    ),
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

  Widget momentos() {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
          width: double.infinity,
          height: height * 0.45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/Person.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
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
                        animationDuration: const Duration(hours: 1),
                        images: const [
                          AssetImage('assets/images/540.png'),
                          AssetImage('assets/images/548.png'),
                          AssetImage('assets/images/concert 1.jpg'),
                        ],
                        dotSize: 5,
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
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.heart,
                          )),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.share,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Row(
                        children: const [
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

  Widget adblok() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.18,
      width: width * 1.0,
      decoration: BoxDecoration(
          color: Colors.deepPurple.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
          child: Text(
        'Place your ads here',
        style: TextStyle(fontSize: 22),
      )),
    );
  }

  Widget adblokSkelton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.22,
      width: width * 1.0,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(15)),
      child: const Center(
          child: Text(
        'Place your ads here',
        style: TextStyle(fontSize: 25),
      )),
    );
  }

}
