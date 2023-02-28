// import 'package:ethiocart/Screens/Events/favorites_screen.dart';
import 'package:ethiocart/Screens/HomeView/transport_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class CardListScreen extends StatefulWidget {
  const CardListScreen({super.key});

  @override
  State<CardListScreen> createState() => _CardListScreenState();
  static Widget cardList(context,String typee, dynamic loocation, AssetImage atImage) {
    String type = typee;
    dynamic location = loocation;

    // AssetImage image = atImage;
    return InkWell(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TransportDetail()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5, left: 10),
        height: 270,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/541.png'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Colors.deepPurple),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 260, top: 10),
              height: 65,
              width: 65,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                    'DEC 30 ',
                    style: TextStyle(fontSize: 20, color: Colors.white,
                        fontFamily: 'SFPro'
                    ),
                  )),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.transparent, Colors.black]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              height: 100,
              margin: const EdgeInsets.only(top: 170),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      width: 340,
                      margin: const EdgeInsets.only(bottom: 5, left: 25),
                      child: Text(
                        type,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 22, color: Colors.white,
                            fontFamily: 'SFPro'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          // child: Icon(
                          //   Icons.location_on_sharp,
                          //   color: Colors.white,
                          // )
                        ),
                        Text(
                          '$location',
                          style: const TextStyle(fontSize: 18, color: Colors.white,
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
    );
  }

}

class _CardListScreenState extends State<CardListScreen> {
  bool fieldValue = false;
  @override
  Widget build(BuildContext context) {
return Container();
  }

}
