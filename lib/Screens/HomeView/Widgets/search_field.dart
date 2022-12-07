import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchFieldScreen extends StatelessWidget {
  const searchFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return searchField();
  }

  Widget searchField() {
    return Row(
      children: [
        Container(
          width: 390,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18)),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              focusColor: Colors.white,
              prefixIcon: new Icon(
                  Icons.search,
                  color: Colors.black,
                size: 30,
              ),
              // border: OutlineInputBorder(),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Enter a search term',
              hintStyle: TextStyle(fontSize: 20),
            ),
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SFCompact',
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),

          ),
        )
      ],
    );
  }
}

