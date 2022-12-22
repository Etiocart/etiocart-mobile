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
    return Material(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 10, right: 10),
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
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(150),
                              color: Colors.grey.shade200),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 105, top: 105),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blueAccent),
                        child: Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Icon(
                            FontAwesomeIcons.pencil,
                            color: Colors.white,
                            size: 20,
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
                      child: UpdateButton(),
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
    String text = lablelText;
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 390,
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor:Color(0xffE0EBE3),
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
    DateTime date = new DateTime(now.year, now.month, now.day);
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Row(
        children: [
          Container(
            width: 340,
            margin: EdgeInsets.only(right: 10, left: 0),
            child: Text(
              '${date.year}/${date.month}/${date.day}',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal.shade800,
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
                color: Colors.teal.shade600,
              ))
        ],
      ),
    );
  }
}
