// ignore_for_file: prefer_const_constructors
import 'dart:js';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _signiInState();
}

class _signiInState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Positioned(
            top: 60,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'SFCompact',
                        fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'If you need any support Click here',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                  ),
                  CustomFormField(),
                  CustomFormField(),
                  CustomFormField(),
                  RegisterBtn(),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 18),
                  ),
                  SignOption(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Do You Have An Account ?'), RegisterNow()],
                  )
                ],
              ),
            ),
          )
        ]),
      )),
    );
  }
}

Widget SignOption() {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apple_rounded),
              iconSize: 30,
              color: Colors.black54,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apple_sharp),
              iconSize: 30,
              color: Colors.black54,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget RegisterBtn() {
  return Container(
    padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
        onPressed: () {
          print('it has been pressed again');
        },
        style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: const Color(0xff1e88e5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Register',
          style: TextStyle(fontFamily: 'SFRounded', fontSize: 15),
        )),
  );
}

Container CustomFormField() {
  return Container(
    padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    width: double.infinity,
    height: 60,
    child: Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextField(
            style: TextStyle(color: Colors.black87, fontSize: 15),
            decoration: InputDecoration(
              hintText: 'hint value',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.white),
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget RegisterNow() {
  return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {
            print('Risteration Page re route');
          },
          child: Text('Sign in')));
}
