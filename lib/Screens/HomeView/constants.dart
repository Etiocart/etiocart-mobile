import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<IconData> filtericons = [
  CupertinoIcons.music_note,
  CupertinoIcons.airplane,
  CupertinoIcons.app,
  CupertinoIcons.antenna_radiowaves_left_right,
];

List<String> eventName = [
  'Jano Concert',
  'Seminar',
  'Bettles Concert',
  'Web Seminar',
  'Speech'
];

List<dynamic> eventLocation = [
  'Addis Ababa',
  'Adama',
  'Bishoftu',
  'Ambo',
  'Mekele'
];

List <dynamic> distance = [
  80,
  85,
  87,
  90,
  100
];

List<String> location1 = [
  'Addis Ababa',
  'Adama',
  'Bishoftu',
  'Ambo',
  'Mekele'
];

List<String> location2 = [
  'Mekele',
  'Addis Ababa',
  'Ambo',
  'Bishoftu',
  'Adama',
];


List <String> TextMain = [
  '94',
  '59',
  '47',
  '42',
  '20'
];

List <String> TextSub = [
  '50',
  '45',
  '37',
  '60',
  '99'
];

List <String> EventMain = [
  'event1',
  'event2',
  'event3',
  'event4',
  'event5'
];

List <String> EventSub = [
  'sub1',
  'sub2',
  'sub3',
  'sub4',
  'sub5'
];

var price = 10;
var TotalPrice = price*distance[0];
