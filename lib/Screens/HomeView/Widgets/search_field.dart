import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchFieldScreen extends StatelessWidget {
  const searchFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return searchField();
  }

  Widget searchField() {
    return Material(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(18)),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SFCompact',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                    size: 35,
                  ),
                  hintText: 'hint value',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.black12),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
