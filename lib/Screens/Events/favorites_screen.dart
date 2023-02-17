// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/HomeView/Widgets/home_page_widgets.dart';
import 'package:ethiocart/Screens/Profile/profile_view.dart';
import 'package:ethiocart/Screens/Search/search_delegate.dart';
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
        title: Text(
          'Favorite',
          style: TextStyle(fontSize: 22),
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
      body: Material(
        // color: Colors.white,
        child: Container(
          color: Colors.black.withOpacity(0.06),
          child: SafeArea(
            child: SingleChildScrollView(
              child: FavoritesCard(),
            ),
          ),
        ),
      ),
    );
  }
}


