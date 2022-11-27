// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';

  Widget favoritesCard() {
    return Container(
        margin: EdgeInsets.only(bottom: 5, left: 10, right: 10),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 15, right: 10),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    color: Color(0xff428678),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Traditional Dance Concert',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFCompact',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Wed Dec 2022 18:00 - 22:00 PM',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xff428678),
                        fontFamily: 'SFCompact',
                        fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.indigoAccent,
                          size: 25,
                        ),
                        Flexible(
                          child: Text(
                            'New york 101 avenue',
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: 'SFCompact',
                                color: Colors.black38,
                                fontSize: 18),
                          ),
                        ), //button Placement
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
