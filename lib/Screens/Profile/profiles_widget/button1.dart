import 'package:flutter/material.dart';

Container beautiful_button() {
    return Container(
      color: Colors.white,
      height: 500,
      width: 380,
      padding: EdgeInsets.only(top: 20, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 0, top: 0),
            height: 50,
            width: 400,
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(12),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.teal.shade800
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xff0b594c))
                        )
                    )
                ),
              onPressed: () {},
              child: Text(
                'Update profile',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
