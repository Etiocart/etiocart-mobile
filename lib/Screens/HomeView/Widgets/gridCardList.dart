
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static Column gridView(String te1, String te2) {
    String text1 = te1;
    String text2 = te2;
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
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(35),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/542.png'),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 230, left: 30),
                        child:  Text(
                          text1,
                          style: const TextStyle(color: Colors.white,
                              fontSize: 40),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 270, left: 30),
                        child:  Text(
                          text2,
                          style: const TextStyle(color: Colors.white,
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
    ],
  );
  }
}
