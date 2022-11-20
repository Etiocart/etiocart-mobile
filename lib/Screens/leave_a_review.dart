import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class review extends StatelessWidget {
  const review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: reviewCard(),
    );
  }



  Widget reviewCard() {
    return Container(
      color: Color(0xffededed),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 0,
              right: 0,
            ),
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            height: 600,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Leave a Review',
                  style: TextStyle(
                      fontFamily: 'SFCompact',
                      fontSize: 28,
                      color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 10, top: 30),
                  child: Text(
                    'How was your experience with art & painting training',
                    style: TextStyle(
                        fontFamily: 'SFCompact',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),

                ratingBar(),

                Container(
                  margin: EdgeInsets.only(bottom: 40, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 160,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Maybe Later', style: TextStyle(
                              color: Color(0xff4500e2),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,

                          ),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xffd0dfff)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    side: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.0),
                          ))),

                        ),
                      ),
                      Container(
                        width: 160,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(' Submit'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xff4500e2)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
Widget customRatingBar(){
    return Container(
      child:GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_border_rounded,
            color: Color(0xff344ab2),
            size: 45,
          ),
          GestureDetector(
            child: Icon(
              Icons.star_border_rounded,
              color: Color(0xff344ab2),
              size: 45,
            ),
          ),
          Icon(
            Icons.star_border_rounded,
            color: Color(0xff344ab2),
            size: 45,
          ),
          Icon(
            Icons.star_border_rounded,
            color: Color(0xff344ab2),
            size: 45,
          ),
          Icon(
            Icons.star_border_rounded,
            color: Color(0xff344ab2),
            size: 45,
          ),
        ],
      ),
    ),);
}
  Widget ratingBar() {
    return Container(child:
        RatingBar.builder(
          glow: true,
          glowColor: Colors.amber,
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
            unratedColor:Color(0xff8cd3ff),
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            FeatherIcons.star,
            shadows: [Shadow(color:Colors.black)],
            color: Color(0xff1c4966),
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
    );
  }

  // Widget customRAtingBar2(){
  //   return Container(child:
  //       RatingBar(
  //         initialRating: 3,
  //         direction: Axis.horizontal,
  //         allowHalfRating: true,
  //         itemCount: 5,
  //         ratingWidget: RatingWidget(
  //           full: _image('assets/heart.png'),
  //           half: _image('assets/heart_half.png'),
  //           empty: _image('assets/heart_border.png'),
  //         ),
  //         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
  //         onRatingUpdate: (rating) {
  //           print(rating);
  //         },
  //       );
  //   );
  // }
}
