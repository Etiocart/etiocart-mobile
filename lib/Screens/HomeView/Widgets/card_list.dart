import 'package:ethiocart/Screens/Events/favorites_screen.dart';
import 'package:ethiocart/Screens/HomeView/event_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cardListScreen extends StatefulWidget {
  const cardListScreen({super.key});

  @override
  State<cardListScreen> createState() => _cardListScreenState();
}

class _cardListScreenState extends State<cardListScreen> {
  bool Fieldvalue = false;
  @override
  Widget build(BuildContext context) {
    return cardList(context);
  }

  Widget cardList(context) {
    return InkWell(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => favoritesHome()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 5),
        height: 300,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.darken,
            ),
            image: AssetImage('assets/images/540.png'),
          ),
        ),
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: <Color>[Colors.white, Colors.black]),
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                height: 100,
                margin: EdgeInsets.only(top: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5, left: 25),
                      child: Text(
                        'National Music Festival',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5, left: 25),
                      child: Text(
                        'Monday, Dec 18 16:00 ',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 10),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10, left: 10),
                              child: Icon(
                                Icons.location_on_sharp,
                                color: Colors.white,
                              )),
                          Text(
                            'Grand Park, New york',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
