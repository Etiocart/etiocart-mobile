// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'events_widgets/events_widget.dart';

class FavoritesEventsList extends StatefulWidget {
  const FavoritesEventsList({Key? key}) : super(key: key);

  @override
  State<FavoritesEventsList> createState() => _FavoritesEventsListState();
}

class _FavoritesEventsListState extends State<FavoritesEventsList> {
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
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          // this is the searchbar at the top of the appbar
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: ImageIcon(
                  color: Colors.green.shade800,
                  size: 20,
                  AssetImage('assets/icons/Search.png',
                  )
              )
          ),
        ],
      ),
      body: Material(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              physics: ScrollPhysics(parent: BouncingScrollPhysics()),
              child: FavoritesEventsCard(),
            ),
          ),
        ),
      ),
    );
  }
}
