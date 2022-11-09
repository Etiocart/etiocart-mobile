// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';

class signiIn extends StatefulWidget {
  const signiIn({super.key});

  @override
  State<signiIn> createState() => _signiInState();
}

class _signiInState extends State<signiIn> {
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
                  SignInText(),
                  needSupportText(),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  CustomFormField(),
                  CustomFormField(),
                  ForgotPasswordbtn(),
                  LoginbtnWid(),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 18),
                  ),
                  LoginOption(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Not a Member ?'), RegisterNow()],
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

class SignInText extends StatelessWidget {
  const SignInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign In',
      style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontFamily: 'SFCompact',
          fontWeight: FontWeight.w200),
    );
  }
}

class needSupportText extends StatelessWidget {
  const needSupportText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'If you need any support Click here',
      style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontFamily: 'Gotham',
          fontWeight: FontWeight.w300),
    );
  }
}

Widget LoginOption() {
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

Widget LoginbtnWid() {
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
          'Login',
          style: TextStyle(fontFamily: 'SFRounded', fontSize: 15),
        )),
  );
}

Container CustomFormField() {
  return Container(
    padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    width: double.infinity,
    height: 70,
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

Widget ForgotPasswordbtn() {
  return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {
            print('forgot password button pressed');
          },
          child: Text('Forgot Password ?')));
}

Widget RegisterNow() {
  return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {
            print('Risteration Page re route');
          },
          child: Text('Register now')));
}
