import 'package:flutter/material.dart';

Container beautiful_button() {
    return Container(
      color: Colors.white,
      height: 500,
      width: 500,
      padding: EdgeInsets.only(top: 20, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 0),
            height: 50,
            width: 400,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff0b594c)),
                elevation: MaterialStateProperty.all(12),
                shadowColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {},
              child: Text(
                'send email',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
