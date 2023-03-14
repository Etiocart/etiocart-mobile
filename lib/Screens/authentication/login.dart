import 'package:ethiocart/Screens/authentication/widget.dart/login_form.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
                    // height: 200,
                    // width: 350,
                    child: Stack(children: const [
                    ])),
                SizedBox(
                  child:
                  //    contains the image of the big dog
                  Image.asset(
                    "assets/images/muz-green.png",
                    //specifies the opacity of the image
                    opacity: const AlwaysStoppedAnimation(4.0),
                    width: width * 0.5,
                    height: width * 0.5,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style:
                            TextStyle(fontSize: 32,
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Into your etiocart account',
                        style:
                        TextStyle(fontSize: 20,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ],
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
