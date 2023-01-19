import 'package:ethiocart/Screens/Events/favorites_screen.dart';
import 'package:ethiocart/Screens/HomeView/transport_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class cardListScreen extends StatefulWidget {
  const cardListScreen({super.key});

  @override
  State<cardListScreen> createState() => _cardListScreenState();
  static Widget cardList(context,String Type, dynamic Location, AssetImage atImage) {
    String type = Type;
    dynamic location = Location;

    AssetImage image = atImage;
    return InkWell(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TransportDetail()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 5, left: 10),
        height: 270,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/541.png'),
          ),
        ),
        child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.deepPurple),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 260, top: 10),
                height: 65,
                width: 65,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                      'DEC 30 ',
                      style: TextStyle(fontSize: 20, color: Colors.white,
                          fontFamily: 'SFPro'
                      ),
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[Colors.transparent, Colors.black]),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                height: 100,
                margin: EdgeInsets.only(top: 170),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 340,
                        margin: EdgeInsets.only(bottom: 5, left: 25),
                        child: Text(
                          type,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 22, color: Colors.white,
                              fontFamily: 'SFPro'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5, left: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10, left: 10),
                            // child: Icon(
                            //   Icons.location_on_sharp,
                            //   color: Colors.white,
                            // )
                          ),
                          Text(
                            '$location',
                            style: TextStyle(fontSize: 18, color: Colors.white,
                                fontFamily: 'SFPro'),
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

class _cardListScreenState extends State<cardListScreen> {
  bool Fieldvalue = false;
  @override
  Widget build(BuildContext context) {
return Container();
  }

}
