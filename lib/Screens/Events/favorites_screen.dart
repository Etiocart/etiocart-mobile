// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/HomeView/Widgets/home_page_widgets.dart';
import 'package:ethiocart/Screens/Profile/profile_view.dart';
import 'package:ethiocart/Screens/Search/search_delegate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events_widgets/events_widget.dart';

class favoritesHome extends StatefulWidget {
  const favoritesHome({Key? key}) : super(key: key);

  @override
  State<favoritesHome> createState() => _favoritesHomeState();
}

class _favoritesHomeState extends State<favoritesHome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          color: Colors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              physics: ScrollPhysics(parent: BouncingScrollPhysics()),
              child: FavoritesCard(),
            ),
          ),
        ),
      ),
    );
  }
}


