// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/HomeView/Widgets/home_page_widgets.dart';
import 'package:ethiocart/Screens/Profile/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events_widgets/events_widget.dart';

class favoritesHome extends StatelessWidget {
  const favoritesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.teal.shade800,
        backgroundColor: Colors.white,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profileView()),
                );
              },
              child: Text(
                'Favorites',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Material(
        // color: Colors.white,
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // viewsbutton(),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchBar(),
                          for (var i = 0; i < 6; i++) FavoritesCard(),
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
