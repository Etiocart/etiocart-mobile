// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import '../../Search/search_delegate.dart';
import '../../bottom_nav_screen.dart';
import '../Widgets/home_page_widgets.dart';

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
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }

  Widget HomeView() {
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
                  height: height * 0.655,
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
      padding: EdgeInsets.only(top: 5, left: 10),
      height: height * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade50),
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
      height: height * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconAvatarSkeleton(),
                Padding(padding: EdgeInsets.only(left: 60)),
                IconAvatarSkeleton(),
                Padding(padding: EdgeInsets.only(left: 60)),
                IconAvatarSkeleton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column IconAvatar() {
    var index = 0;
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey.shade50,
          child: Center(
              child: Icon(
            Icons.access_time,
            color: Colors.black87,
            size: 30,
          )),
        ),
        Text('posts')
      ],
    );
  }

  Column IconAvatarSkeleton() {
    var index = 0;
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.black.withOpacity(0.04),
        ),
      ],
    );
  }

  Widget FeedView() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: width * 0.95,
        height: height * 0.15,
        decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(15)),
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
