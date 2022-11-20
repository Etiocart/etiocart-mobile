// ignore_for_file: prefer_const_constructors
// import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
              height: 560,
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
                    'Register',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'If you need any support ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Click here',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                  ),
                  custom_form_field(),
                  custom_form_field(),
                  custom_form_field(),
                  register_btn(),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 20, fontFamily: 'SFPro'),
                  ),
                  sign_in_option(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do You Have An Account ?',
                      style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: 18
                      ),
                      ),
                      register_now()
                    ],
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

Widget sign_in_option() {
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
              color: Colors.deepPurpleAccent,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apple_sharp),
              iconSize: 30,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget register_btn() {
  return Container(
    margin: EdgeInsets.only(top: 10),
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
          style: TextStyle(fontFamily: 'SFPro', fontSize: 18),
        )),
  );
}

Container custom_form_field() {
  return Container(
    padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
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

Widget register_now() {
  return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {
            print('Risteration Page re route');
          },
          child: Text('Sign in', style:
            TextStyle(fontSize: 18, fontFamily: 'SFPro')
            ,)));
}
