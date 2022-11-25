// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class choose_theme extends StatelessWidget {
  const choose_theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 250),
                  ),
                  Text(
                    'ethio',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w300),
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
              ),
            ),
            Positioned(
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
                    children: [
                      Text(
                        'Choose Mode',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 70),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.light_mode_outlined),
                            iconSize: 60,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.dark_mode),
                            iconSize: 60,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Light',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                          ),
                          Text(
                            'Dark',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
