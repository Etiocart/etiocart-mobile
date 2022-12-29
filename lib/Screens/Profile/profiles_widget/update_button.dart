import 'package:flutter/material.dart';

Container UpdateButton() {
  return Container(
    color: Colors.white,
    height: 150,
    padding: EdgeInsets.only(top: 20, bottom: 50),
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        height: 50,
        width: 380,
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.teal.shade800),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.teal.shade800)))),
          onPressed: () {},
          child: Text(
            'update profile',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ]),
  );
}
