import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransportSearchBar extends StatefulWidget {
  const TransportSearchBar({Key? key}) : super(key: key);

  @override
  State<TransportSearchBar> createState() => _TransportSearchBarState();
}

class _TransportSearchBarState extends State<TransportSearchBar> {
  bool fieldvalue = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(fieldvalue ? 360 : 360)),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            margin: const EdgeInsets.only(top: 40, left: 8, right: 8),
            decoration: BoxDecoration(
                color: fieldvalue ? const Color(0xffE0EBE3) : const Color(0xff002f24),
                borderRadius: BorderRadius.circular(fieldvalue ? 360 : 360)),
            child: fieldvalue ? searchField() : searchButton(),
          ),
        )
      ]),
    );
  }

  Widget searchField() {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 15),
      title: TextField(
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
          hintText: 'Search in events',
          hintStyle: const TextStyle(fontSize: 18),
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
      icon: const Icon(
        FontAwesomeIcons.magnifyingGlass,
        color: Colors.white,
      ),
      onPressed: () {
        if (mounted) {
          setState(() {
            fieldvalue = true;
          });
        }
      },
    );
  }

  Widget clearButton() {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: const Color(0xff0B594C), borderRadius: BorderRadius.circular(360)),
      child: IconButton(
        tooltip: 'clear',
        icon: const Icon(
          FontAwesomeIcons.xmark,
          color: Colors.white,
        ),
        onPressed: () {
          if (mounted) {
            setState(() {
              fieldvalue = false;
            });
          }
        },
      ),
    );
  }
}
