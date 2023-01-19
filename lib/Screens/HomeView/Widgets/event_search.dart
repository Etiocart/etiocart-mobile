import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class eventSearchBar extends StatefulWidget {
  const eventSearchBar({Key? key}) : super(key: key);

  @override
  State<eventSearchBar> createState() => _eventSearchBarState();
}

class _eventSearchBarState extends State<eventSearchBar> {
  bool Fieldvalue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
      child: AnimatedContainer(
        height: 50,
        padding: EdgeInsets.only(),
        duration: Duration(milliseconds: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
        child:searchField(),
      ),
    );
  }

  Widget searchField() {
    var _controller = TextEditingController();
    return ListTile(
      contentPadding: EdgeInsets.only(left: 15),
      title: Container(
        child: TextField(
          controller: _controller,
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
                if (mounted)
                  setState(() {
                    _controller.clear;
                  });
              },
            ),

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
        if (mounted)
          setState(() {
          });
      },
    );
  }

}
