// ignore_for_file: prefer_const_constructors

// import 'dart:js';

import 'package:flutter/material.dart';

class singIn extends StatefulWidget {
  const singIn({super.key});

  @override
  State<singIn> createState() => _singInState();
}

class _singInState extends State<singIn> {
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
              height: 550,
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
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        'Sign In',
        style: TextStyle(
            color: Colors.green,
            fontSize: 35,
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w200),
      ),
    );
  }
}

class needSupportText extends StatelessWidget {
  const needSupportText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'If you need any support ',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w300),
        ),
        Text(
          'Click here',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w300),
        ),
      ],
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
          style: TextStyle(fontFamily: 'SFPro', fontSize: 20, fontWeight: FontWeight.bold),
        )),
  );
}

Material CustomFormField() {
  return Material(
    color: Colors.white,
    borderRadius: BorderRadius.circular(35),
    child: Container(
      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextField(
            style: TextStyle(color: Colors.black87, fontSize: 18),
            decoration: InputDecoration(
              hintText: 'hint value',
              hintStyle: TextStyle(fontSize: 18, color: Colors.black45),
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
