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
    return Material(
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            margin: EdgeInsets.only(top: 40, left: 8, right: 8),
            decoration: BoxDecoration(
                color: Fieldvalue ? Color(0xffE0EBE3) : Color(0xff002f24),
                borderRadius: BorderRadius.circular(Fieldvalue ? 360 : 360)),
            child: Fieldvalue ? searchField() : searchButton(),
          ),
        )
      ]),
    );
  }

  Widget searchField() {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 15),
      title: TextField(
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          hintText: 'Search in events',
          hintStyle: TextStyle(fontSize: 18),
          fillColor: Colors.grey.withOpacity(0.0),
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
        color: Colors.white,
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
          color: Color(0xff0B594C), borderRadius: BorderRadius.circular(360)),
      child: IconButton(
        tooltip: 'clear',
        icon: Icon(
          FontAwesomeIcons.xmark,
          color: Colors.white,
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
