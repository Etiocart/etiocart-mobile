// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class choose_theme extends StatelessWidget {
  const choose_theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        foregroundColor: Colors.teal.shade800,
        title: Text('Theme', style: TextStyle(fontSize: 22),),
      ),
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
                ],
              ),
            ),
            Positioned(
                top: 250,
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
                            iconSize: 40,
                            color: Colors.deepOrange,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.dark_mode),
                            iconSize: 40,
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
                            padding: EdgeInsets.only(left: 0),
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
