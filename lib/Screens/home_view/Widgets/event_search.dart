import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventSearchBar extends StatefulWidget {
  const EventSearchBar({Key? key}) : super(key: key);

  @override
  State<EventSearchBar> createState() => _EventSearchBarState();
}

class _EventSearchBarState extends State<EventSearchBar> {
  bool fieldValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(fieldValue ? 360 : 360)),
      child: AnimatedContainer(
        height: 50,
        padding: const EdgeInsets.only(),
        duration: const Duration(milliseconds: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(fieldValue ? 360 : 360)),
        child:searchField(),
      ),
    );
  }

  Widget searchField() {
    var controller = TextEditingController();
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 15),
      title: TextField(
        controller: controller,
        style: TextStyle(fontSize: 18, color: Colors.teal.shade800),
        decoration: InputDecoration(
          prefixIcon: searchButton(),
          hintText: 'Search in events',
          hintStyle: TextStyle(
              fontSize: 18, color: Colors.teal.shade800,
          fontFamily: 'SFPro'),
          border: InputBorder.none,
          suffixIcon: IconButton(
            tooltip: 'clear',
            icon: Icon(
              FontAwesomeIcons.xmark,
              color: Colors.teal.shade800,
            ),
            onPressed: () {
              if (mounted) {
                setState(() {
                  controller.clear;
                });
              }
            },
          ),

        ),

      ),
    );
  }

  Widget searchButton() {
    return IconButton(
      tooltip: 'search',
      icon: Icon(
        FontAwesomeIcons.magnifyingGlass,
        color: Colors.teal.shade800,
        size: 25,
      ),
      onPressed: () {
        if (mounted) {
          setState(() {
          });
        }
      },
    );
  }

}
