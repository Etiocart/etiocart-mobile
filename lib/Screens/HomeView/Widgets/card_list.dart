import 'package:flutter/material.dart';
class cardListScreen extends StatelessWidget {
  const cardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return cardList();
  }
}
Widget cardList() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
            height: 380,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(children: [
              Material(
                elevation: 0,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 0),
                  height: 270,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                      ),
                    ),
                  ),
                  // child: Image(image: AssetImage('assets/images/Image1.png')),
                ),
              ),
              Column(
                children: const [
                  // AspectRatio(aspectRatio: 2/2),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'National Music Festival',
                    style: TextStyle(
                      fontFamily: 'SFCompact',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text('Mon, Dec 24 18:00 - 23:00',
                      style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      )),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text('Grand Park, New York',
                      style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      )),
                ],
              )
            ]),
          ),
        ],
      )
    ],
  );
}




