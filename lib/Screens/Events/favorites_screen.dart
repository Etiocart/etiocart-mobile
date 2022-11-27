// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events_widgets/events_widget.dart';

class favoritesHome extends StatelessWidget {
  const favoritesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Favorites', style: TextStyle(color: Colors.black, fontSize: 25),),
          Spacer(),
          Icon(Icons.search, color: Colors.black, size: 30),
        ],
      ),
      backgroundColor: Colors.white,

      ),
      body: Material(
        color: Color(0xffededed),
        // color: Colors.white,
        child: Container(
          color: Colors.transparent,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  viewsbutton(),
                  Column(
                    children: [
                      Container(
                        //number favorites list label
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding: EdgeInsets.only(top: 5, left: 5),
                        margin: EdgeInsets.only(bottom: 0, left: 10, right: 10, top: 5),
                        child: Text(
                          '44 Favorites',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'SFCompact'),
                        ),
                      ),
                      Column(
                        children: [
                          for (var i = 0; i < 10; i++)
                          favoritesCard(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
