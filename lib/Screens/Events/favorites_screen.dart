// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'events_widgets/events_widget.dart';

class FavoritesHome extends StatefulWidget {
  const FavoritesHome({Key? key}) : super(key: key);

  @override
  State<FavoritesHome> createState() => _FavoritesHomeState();
}

class _FavoritesHomeState extends State<FavoritesHome> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
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
          // this is the searchbar at the top of the appbar
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
