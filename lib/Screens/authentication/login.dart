import 'package:ethiocart/Screens/authentication/widget.dart/login_from.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              // padding: const EdgeInsets.all(18.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      // color: Colors.amber,
                      height: 200,
                      width: 350,
                      child: Stack(children: [
                      ])),
                  Center(
                    child: Text(
                      'Log In',
                      style:
                          TextStyle(fontSize: 30,
                              color: Colors.teal.shade800,
                              fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  LoginForm(),

                  // LoginFooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
