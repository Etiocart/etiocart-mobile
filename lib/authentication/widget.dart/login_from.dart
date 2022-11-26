import 'dart:ffi';

import 'package:ethiocart/authentication/login.dart';
import 'package:ethiocart/authentication/signup.dart';
// import 'package:etio_cart23/screen/loginscreen.dart';
// import 'package:etio_cart23/splash/getstarted.dart';

// import 'package:etio_cart23/widget/login_widget/forgotpassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                // width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade50),
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey.shade100),
                child: TextFormField(
                  style: TextStyle(fontSize: 18),
                  // key: ValueKey('email'),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  controller: emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.teal,
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Enter username or email',
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                // width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade50),
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey.shade100),
                child: TextField(
                  style: TextStyle(fontSize: 18),

                  obscureText: passwordVisible,
                  // autocorrect: false,
                  // textCapitalization: TextCapitalization.none,
                  // controller: passwordController,
                  decoration: InputDecoration(
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
                        color: Colors.teal,
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Please enter your password',
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
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
                      style: TextStyle(fontSize: 14, color: Colors.teal),
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: (() {}),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.circular(25),
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
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: 'Not a Memmber ? '),
                  TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Colors.teal,
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
