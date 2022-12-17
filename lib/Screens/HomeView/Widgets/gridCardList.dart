import 'package:flutter/material.dart';

class gridCard extends StatelessWidget {
  const gridCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0, left: 15, right: 10, bottom: 15),
              height: 350,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(children: [
                Material(
                  elevation: 0,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 0),
                    height: 340,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                Colors.black45,
                                BlendMode.darken,
                              ),
                              image: AssetImage('assets/images/540.png'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 230, left: 30),
                          child: const Text(
                            'Concerto',
                            style: TextStyle(color: Colors.white,
                                fontSize: 40),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 270, left: 30),
                          child: const Text(
                            'Bole AirPort',
                            style: TextStyle(color: Colors.white,
                                fontSize: 32),
                          ),
                        )
                      ],
                    ),
                    // child: Image(image: AssetImage('assets/images/Image1.png')),
                  ),
                ),

              ]),
            ),
          ],
        ),
        // Container(
        //   child: Column(
        //     children: [
        //       const Text(
        //         'Bole AirPort',
        //         style: TextStyle(color: Colors.black,
        //             fontSize: 32),
        //       ),
        //       const Text(
        //         'Bole AirPort',
        //         style: TextStyle(color: Colors.black,
        //             fontSize: 32),
        //       ),
        //       const Text(
        //         'Bole AirPort',
        //         style: TextStyle(color: Colors.black,
        //             fontSize: 32),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
