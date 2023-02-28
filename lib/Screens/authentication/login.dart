import 'package:ethiocart/Screens/authentication/widget.dart/login_from.dart';
// import 'package:flutter/gestures.dart';
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
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    // color: Colors.amber,
                    height: 200,
                    width: 350,
                    child: Stack(children: const [
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

                const SizedBox(
                  height: 30,
                ),
                const LoginForm(),

                // LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
