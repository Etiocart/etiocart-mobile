// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:ethiocart/Screens/HomeView/transport_detail.dart';
import 'package:flutter/material.dart';
import '../../Notification/notification.dart';
import '../../Search/search_delegate.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

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
    //var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset:false,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.teal.shade900,
            elevation: 0,
            actions: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()),
                      );
                    },
                    child: ImageIcon(
                        color: Colors.black,
                        size: 30,
                        AssetImage('assets/icons/notification.png',
                        )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  Text(
                    'Discover',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  IconButton(
                      onPressed: () {
                        showSearch(context: context, delegate: CustomSearch());
                      },
                      icon: ImageIcon(
                          color: Colors.black,
                          size: 25,
                          AssetImage('assets/icons/Search.png',
                          )
                      )
                  ),
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
                IconAvatarList(height),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: const [
                      Text('Discounts', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              if (_isloading)
                SizedBox(
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
                SizedBox(
                  height: height * 0.65,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await Future.delayed(Duration(milliseconds: 1500));
                      setState(() {});
                    },
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                        itemCount: _posts.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              FeedView()],
                          );
                        }),
                  ),
                )
            ],
          )),
    );
  }

  Container IconAvatarList(double height) {
    return Container(
      height: height * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                transportIcon(TransportDetail(), 'event'),
                Spacer(),
                // Padding(padding: EdgeInsets.only(left: 40)),
                eventIcon(TransportDetail(), 'transport',),
                Spacer(),
                // Padding(padding: EdgeInsets.only(left: 40)),
                adventIcon(TransportDetail(), 'advent', ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container IconAvatarListSkeleton(double height) {
    return Container(
      padding: EdgeInsets.only(bottom: 0, left: 5),
      height: height * 0.13,
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

  InkWell transportIcon(var type, String name) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    final ictype = type;
    // final typename = name;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ictype),
        );
      },
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff394f6b).withOpacity(0.8),
          child: ImageIcon(
            color: Colors.white,
            size: 35,
              AssetImage('assets/icons/bus-alt.png',
              )
          ),
        )
    );
  }
  InkWell eventIcon(var type, String name) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    final ictype = type;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ictype),
        );
      },
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff394f6b).withOpacity(0.8),
          child: ImageIcon(
              color: Colors.white,
              size: 35,
              AssetImage('assets/icons/drink.png',
              )
          ),
        )
    );
  }
  InkWell adventIcon(var type, String name) {
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    final ictype = type;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ictype),
        );
      },
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff394f6b).withOpacity(0.8),
          child: ImageIcon(
              color: Colors.white,
              size: 35,
              AssetImage('assets/icons/hiking.png',
              )
          ),
        )
    );
  }

  Column IconAvatarSkeleton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // var index = 0;
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
    // var size = MediaQuery.of(context).size.aspectRatio;
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
                height: height * 0.14,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/concerto.png')
                    ),
                    color: Color(0xff394f6b).withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              )
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:120),
                          child: Text(
                            'organizer',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
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
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      'date and time',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      'Event Location',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'discounted',
                          overflow: TextOverflow.ellipsis,
                          style:
                          TextStyle(fontSize: 16, color: Colors.blue.shade700),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3m ago',
                          overflow: TextOverflow.ellipsis,
                          style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade700),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget FeedViewSkeleton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
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
