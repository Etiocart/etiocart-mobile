import 'package:ethiocart/authentication/widget.dart/login_from.dart';
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                      height: 250,
                      width: 350,
                      child: Stack(children: [
                        Center(
                            child: Image.asset('assets/images/ec-logo3xx.png')),
                      ])),
                  Center(
                    child: Text(
                      'LogIn',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //Login Form

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
