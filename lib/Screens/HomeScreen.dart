// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: const [
                etioCartName(),
                getStartedText(),
                getStartedButton()
              ],
            )),
      ),
    );
  }
}

class getStartedButton extends StatelessWidget {
  const getStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 161, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}

class getStartedText extends StatelessWidget {
  const getStartedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 300,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Everything You Need',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              SizedBox(
                width: 350,
                child: Text(
                  "While it’s easy to make a network request, working with a raw Future<http.Response isn’t very convenient. To make your life easier, convert the http.Response into a Dart object.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
              ),
            ],
          ),
        ));
  }
}

class etioCartName extends StatelessWidget {
  const etioCartName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.only(top: 140),
        ),
        Text(
          'ethio',
          style: TextStyle(
              fontSize: 40, fontFamily: 'Gotham', fontWeight: FontWeight.w300),
        ),
        Text(
          'cart',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 35,
              fontFamily: 'Marg',
              fontWeight: FontWeight.w200),
        )
      ],
    ));
  }
}
