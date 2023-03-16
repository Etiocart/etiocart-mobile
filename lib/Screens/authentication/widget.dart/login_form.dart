

// import 'package:etio_cart23/screen/loginscreen.dart';
// import 'package:etio_cart23/splash/getstarted.dart';

// import 'package:etio_cart23/widget/login_widget/forgotpassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../signup.dart';

// import 'package:flutter/';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
  // bool _passwordVisible = false;

}

class _LoginFormState extends State<LoginForm> {

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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: TextFormField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                  label: const Text('Username Email'),
                  filled: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusColor: Colors.green.withOpacity(0.05),
                  fillColor: Colors.white,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.green.shade900.withOpacity(0.5)),
                  hintText: 'Enter Your Email or Username',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green.shade200),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          //password textformfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: TextFormField(
                maxLength: 20,
                style: const TextStyle(fontSize: 16),
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                    label: const Text('Enter Password'),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue.shade100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade200),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  fillColor: Colors.white,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.green.shade900.withOpacity(0.5)),
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
                    // labelText: 'Enter username or email',
                    hintText: 'Please enter your password',
                    hintStyle:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    border: InputBorder.none),
              ),
            ),
          ),
          // const SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  )),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: GestureDetector(
              onTap: (() {}),
              child: loginButton(context),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(style: const TextStyle(color: Colors.black54), children: [
                const TextSpan(text: 'Not a Member ? ', style: TextStyle(fontSize: 17)),
                TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: Colors.teal.shade800,
                      fontSize: 17
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
    );
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty) {
      return 'Password is required.';
    }
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formPassword)) {
      return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';
    }

    return null;
  }

  loginButton(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: height*0.06,
      width: width*0.9,
      child: ElevatedButton(
        style: ButtonStyle(
          //sets the button elevation to zero
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
                Colors.blueGrey.shade700
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.green.shade800),
                  borderRadius: BorderRadius.circular(18),))),
        onPressed: () {
          setState(() {
          });
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
