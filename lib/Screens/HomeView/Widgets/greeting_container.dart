import 'package:ethiocart/Screens/Screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> user_names = ['Andrew Ainsley', 'michael', 'Tolosa', 'demissie'];

class greetingContainerScreen extends StatelessWidget {

  bool notificationColor=false;
  greetingContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return greetingContainer(context);
  }

  Container greetingContainer(context) {

    return Container(
      width: 420,
      height: 100,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
            color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   fit: BoxFit.fill,
                      //   image: AssetImage('assets/images/Profile.jpg'),
                      // ),
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text('AB', style: TextStyle(color: Colors.white),)),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 0, left: 105, top: 0),
                  padding: EdgeInsets.only(bottom: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    child: Stack(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.transparent,
                                width: 0.9,
                              ),
                              borderRadius: BorderRadius.circular(50),
                              color:notificationColor? Colors.red: Colors.green),
                          margin: EdgeInsets.only(left: 30, top: 10),
                        ),
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.bell,
                            color: Colors.teal.shade800,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Notifications()),
                            );
                          },
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
    );
  }
}
