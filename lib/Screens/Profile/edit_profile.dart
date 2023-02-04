// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, camel_case_types
import 'package:ethiocart/Screens/Profile/profiles_widget/cupertinoDatePicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profiles_widget/pro_widgets.dart';
import './profiles_widget/update_button.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  DateTime now = new DateTime.now();
  String email = 'segni@gmail.com';
  String FirstName = 'segni';
  String LastName = 'Teshome';
  final emails = ['abc@gmail.com', 'def@gmail.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
      ),
      body: editBody(context),
    );
  }

  Widget editBody(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(150),
                        child: Container(
                            width: 160,
                            height: 160,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(150),
                              color: Color(0xffE0EBE3),
                            )),
                      ),
                      Positioned(
                        left: 100,
                        top: 100,
                        child: Container(
                          width: width * 0.12,
                          height: width * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Colors.teal.shade900),
                          child: Material(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Icon(
                              FontAwesomeIcons.image,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
                Row(
                  children: [
                    textFields('First Name'),
                  ],
                ),
                Row(
                  children: [
                    textFields('Last Name'),
                  ],
                ),
                Row(
                  children: [
                    birthDate(context),
                  ],
                ),
                Row(
                  children: [
                    // datePicker(),
                  ],
                ),
                Row(
                  children: [
                    textFields('email'),
                  ],
                ),
                Row(
                  children: [
                    textFields('Phone'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: DropdownButtonExample(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: UpdateButton(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textFields(String lablelText) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String text = lablelText;
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: width*0.9,
      height: height*0.075,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            labelText: text,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(color: Colors.black, fontSize: 18),
            hintText: text),
      ),
    );
  }

  Widget birthDate(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    DateTime date = new DateTime(now.year, now.month, now.day);
    return Container(
      padding: EdgeInsets.only(top: 15, left: 5),
      child: Row(
        children: [
          Container(
            width: width*0.82,
            child: Text(
              '${date.year}/${date.month}/${date.day}',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
          ),
          GestureDetector(
              onTap: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: date,
                    lastDate: DateTime(2024));
                if (newDate == null) return;
                setState(() => date = newDate);
                print(newDate);
              },
              child: Icon(
                FontAwesomeIcons.calendar,
                color: Colors.black87,
              ))
        ],
      ),
    );
  }
}
