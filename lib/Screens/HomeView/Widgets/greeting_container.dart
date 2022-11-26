import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> user_names = ['Andrew Ainsley', 'michael', 'Tolosa', 'demissie'];

class greetingContainerScreen extends StatelessWidget {
  const greetingContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return greetingContainer();
  }

  Container greetingContainer() {
    return Container(
      width: 390,
      height: 85,
      margin: EdgeInsets.only(bottom: 0, top: 0, right: 0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Profile.jpg'),
                        ),
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50)),
                    margin: EdgeInsets.only(left: 10, top: 15),
                  ),
                  Column(
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SFPro',
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            Text(
                              user_names[0],
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SFPro',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 0, left: 105),
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      child: Stack(
                        children: [
                          IconButton(
                            icon: Icon(
                              CupertinoIcons.bell,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                //if else statement to change that based on notification status
                                color: Colors.red),
                            margin: EdgeInsets.only(left: 30, top: 10),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
