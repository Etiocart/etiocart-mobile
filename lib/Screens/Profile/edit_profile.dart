// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, camel_case_types
import 'package:ethiocart/Screens/Profile/profiles_widget/cupertinoDatePicker.dart';
import 'package:ethiocart/Screens/authentication/widget.dart/signup_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profiles_widget/drop_down_button.dart';
import './profiles_widget/update_button.dart';

class editProfile extends StatefulWidget {
   editProfile({super.key});
  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {


  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isValid = false;
  final _form = GlobalKey<FormState>();

  void _saveForm() {
    setState(() {
      _isValid = _form.currentState!.validate();
    });
  }

  //
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // passwordVisible = true;

    super.dispose();
  }
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
            padding: EdgeInsets.only(top: 30, left: 10, right: 0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //contains the profile image information at the top
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(150),
                        //the big circle that should contain the profile picture
                        child: Container(
                            width: 160,
                            height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              color: Color(0xff394f6b).withOpacity(0.2),
                            )),
                      ),
                      //the small circle that contains the image icon to change profile image
                      Positioned(
                        left: 100,
                        top: 100,
                        child: Container(
                          width: width * 0.12,
                          height: width * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xff394f6b).withOpacity(0.8)),
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
                //the textfields in a column
                labelField('Andrew '),
                textFields('First Name'),
                labelField('Ansley'),
                textFields('Last Name'),
                labelField('andrewansley@gmail.com'),
                emailField('email'),
                labelField('0919894564'),
                phoneField('Phone'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
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

  //only for the other textfields
  textFields(String lablelText) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String text = lablelText;
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: width*0.95,
      height: height*0.075,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        //validates the fields for empty-ness
        validator: (value) {
          // Check if this field is empty
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          // the email is valid
          return null;
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.02),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            labelText: text,
            labelStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            hintText: text),
      ),
    );
  }

  //only for phone field
  phoneField(String lablelText) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String text = lablelText;
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: width*0.95,
      height: height*0.075,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        //only checks the field if it is empty
        validator: (value) {
          // Check if this field is empty
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          // the email is valid
          return null;
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.02),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            labelText: text,
            labelStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            hintText: text),
      ),
    );
  }

  //the email text field
  emailField(String lablelText) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String text = lablelText;
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: width*0.95,
      height: height*0.075,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        key: _form,
        //used to validate the email field
        validator: (value) {
          // Check if this field is empty
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          // using regular expression
          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
            return "Please enter a valid email address";
          }
          // the email is valid
          return null;
        },
        //regular expression to evalute the email
        //RegExp(r'[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?');},
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.02),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            //the small texxt above the field
            labelText: text,
            labelStyle: TextStyle(color: Colors.grey),
            //the place holder of the field before you enter text
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            hintText: text),
      ),
    );
  }

  //labels above the textfields
  labelField(String labelText){
     final String text= labelText;
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Text(text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
