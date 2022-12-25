import 'package:flutter/material.dart';

class gridCard extends StatelessWidget {
  const gridCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static Column GridView(String Text1, String Text2) {
    String text1 = Text1;
    String text2 = Text2;
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
                        margin: EdgeInsets.only(top: 230, left: 30),
                        child:  Text(
                          '$text1',
                          style: TextStyle(color: Colors.white,
                              fontSize: 40),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 270, left: 30),
                        child:  Text(
                          '$text2',
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
    ],
  );
  }
}
