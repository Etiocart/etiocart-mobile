import 'package:flutter/material.dart';

class eventsGrid extends StatelessWidget {
  const eventsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return events_grid();
  }
}
Widget events_grid() {
  return Container(
    color: Colors.black,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 180,
            height: 240,
            margin: EdgeInsets.only(right: 5, bottom: 10, left: 5, top: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Text(
                  'Art Workshop',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'data',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SFPro',
                  ),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 240,
            margin: EdgeInsets.only(left: 0, bottom: 10, top: 5, right: 5),
            decoration: BoxDecoration(
                //Color(0xff002f24),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 160,
                    height: 160,
                    margin: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/image2.jpg'),
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Text(
                  'Music Concert',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}