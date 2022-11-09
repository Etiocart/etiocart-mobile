import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class accountOption extends StatelessWidget {
  const accountOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Stack(children: [
            Positioned(
                top: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      )),
                  child: Column(
                    children: [
                      const Text(
                        'Logo',
                        style: TextStyle(color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'ethio',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Gotham',
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            'cart',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Marg',
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      const Text(
                        'Enjoy your favourite Products with your favourite app',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        width: 200,
                        child: const Text(
                          ' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 190,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 5, 161, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(25), // <-- Radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 15),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  Container(
                    width: 130,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 5, 161, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(25), // <-- Radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 15),
                        )),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
