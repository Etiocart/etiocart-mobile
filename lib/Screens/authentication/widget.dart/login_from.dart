import 'dart:ffi';


// import 'package:etio_cart23/screen/loginscreen.dart';
// import 'package:etio_cart23/splash/getstarted.dart';

// import 'package:etio_cart23/widget/login_widget/forgotpassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../login.dart';
import '../signup.dart';

// import 'package:flutter/';

class LoginForm extends StatefulWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
  // bool _passwordVisible = false;

}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool passwordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // passwordVisible = true;

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE0EBE3),),
                child: TextFormField(
                  style: TextStyle(fontSize: 18),
                  // key: ValueKey('email'),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  controller: emailController,
                  decoration:  InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.teal.shade800.withOpacity(0.5),
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Enter username or email',
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE0EBE3)),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  obscureText: passwordVisible,
                  // autocorrect: false,
                  // textCapitalization: TextCapitalization.none,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    fillColor: Color(0xffE0EBE3),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.teal.shade800.withOpacity(0.5),
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Please enter your password',
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            // const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const forgotPassword()));
                    },
                    child: const Text(
                      "Recovery Password",
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: GestureDetector(
                onTap: (() {}),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.teal[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.black54), children: [
                  TextSpan(text: 'Not a Member ? ', style: TextStyle(fontSize: 18)),
                  TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Colors.teal.shade800,
                        fontSize: 18
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        })
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formPassword))
      return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';

    return null;
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Please try again \(dialog test/)",
              textAlign: TextAlign.center,
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text('Ok'),
              )
            ],
          );
        });
  }
}
