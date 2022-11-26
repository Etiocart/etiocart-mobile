// import 'package:etio_cart23/widget/signup_widget/signup_form.dart';

import 'package:ethiocart/authorization/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widget.dart/signup_form.dart';

// import '../widget/login_form.dart';
// import '../widget/login_widget/login_footer.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
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
                    // margin: EdgeInsets.only(right: 300),
                    width: 250,
                    height: 150,
                    // decoration: const BoxDecoration(
                    // color: Colors.orange,
                    // image: DecorationImage(
                    //     image: AssetImage('assets/ec-logo3xx.png'),
                    //     fit: BoxFit.fill),
                    // ),
                    child: Stack(
                      children: [
                        Center(child: Image.asset('assets/images/signup.jpg')),
                      ],
                    ),
                  ),

                  // Container(
                  //   width: 200,
                  //   height: 200,
                  //   decoration: const BoxDecoration(
                  //     // color: Colors.orange,
                  //     image: DecorationImage(
                  //         image: AssetImage('assets/ec-logo3xx.png'),
                  //         fit: BoxFit.fill),
                  //   ),
                  // ),
                  SizedBox(
                    height: 5,
                  ),

                  const Center(
                    child: Text(
                      'Create New Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  //             // recognizer: TapGestureRecognizer()..onTap = () {},
                  //           ),
                  //         ]),
                  //   ),
                  // ),
                  // Padding(padding: padding)

                  // SizedBox(
                  //   height: 10,
                  // ),
                  // LoginHeaderWidget(),
                  SignupForm(),
                  // Singupfooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
