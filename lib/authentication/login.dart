import 'package:ethiocart/authorization/widget.dart/login_from.dart';
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
        // appBar: buildAppBar(context),
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
                  // Container(
                  //   padding: const EdgeInsets.symmetric(vertical: 20),
                  //   child: RichText(
                  //     text: TextSpan(
                  //         style: TextStyle(color: Colors.grey),
                  //         children: [
                  //           TextSpan(text: 'If you need any support  ? '),
                  //           TextSpan(
                  //             text: 'click here',
                  //             style: TextStyle(
                  //               color: mPrimaryColor,
                  //             ),
                  //             recognizer: TapGestureRecognizer()..onTap = () {},
                  //           ),
                  //         ]),
                  //   ),
                  // ),
                  // Padding(padding: padding)

                  // SizedBox(
                  //   height: 30,
                  // ),
                  // LoginHeaderWidget(),
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
