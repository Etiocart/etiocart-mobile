import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool Fieldvalue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        margin: EdgeInsets.only(top: 0, left: 10, right: 8),
        decoration: BoxDecoration(
            color: Fieldvalue ? Colors.grey.shade200 : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
        child: Fieldvalue ? searchField() : searchButton(),
      ),
    );
  }

  Widget searchField() {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 15),
      title: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Search in events',
          hintStyle: TextStyle(fontSize: 18, color: Colors.black),
          border: InputBorder.none,
        ),
      ),
      trailing: clearButton(),
    );
  }

  Widget searchButton() {
    return IconButton(
      tooltip: 'search',
      icon: Icon(
        FontAwesomeIcons.magnifyingGlass,
        color: Colors.teal.shade900,
      ),
      onPressed: () {
        if (mounted)
          setState(() {
            Fieldvalue = true;
          });
      },
    );
  }

  Widget clearButton() {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360)),
      child: IconButton(
        tooltip: 'clear',
        icon: Icon(
          FontAwesomeIcons.xmark,
          color: Colors.teal.shade900,
        ),
        onPressed: () {
          if (mounted)
            setState(() {
              Fieldvalue = false;
            });
        },
      ),
    );
  }
}
