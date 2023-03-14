import 'package:flutter/material.dart';


Widget updateButton(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    height: height*0.06,
    width: width*0.8,
    child: ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(const Color(0xff005a5a)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),))),
      onPressed: () {},
      child: const Text(
        'update profile',
        style: TextStyle(fontSize: 17),
      ),
    ),
  );
}
