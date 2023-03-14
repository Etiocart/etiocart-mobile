// import 'package:etio_cart23/constanst/colors.dart';
// import 'package:etio_cart23/model/object.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// import 'package:flushbar/flushbar_helper.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../login.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final fullController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();
  final phoneNumber = TextEditingController();

  void iniState() {
    // var _passwordVisible = false;
    super.initState();

    // String phoneNumber =  '+234 500 500 5005';
    // PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);
    // String parsableNumber = number.parseNumber();
    // `controller reference`.text = parsableNumber
  }

  final bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    // var dotRegister = () {
    //   // print('on dotRegister');
    //   final form = _formKey.currentState;
    //   if (form!.validate()) {
    //     form.save();
    //     // print(form);
    //   }
    // };

    return Form(
      key: formKey,
      // autovalidateMode: _validate,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // padding: const EdgeInsets.symmetric(vertical: 3),
          children: [
            // const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  autofocus: false,
                  maxLines: 1,
                  validator: validatefullname,
                  controller: fullController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                      label: const Text('Full Name'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green.shade200),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Full Name',
                      hintStyle:
                          TextStyle( color: Colors.grey,
                              fontSize: 16, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  autofocus: false,
                  validator: validateEmail,
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                      label: const Text('Enter Email'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green.shade200),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(
                              color: Colors.grey,
                              fontSize: 18, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                          label: const Text('Phone Number'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade100),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // labelText: 'Enter username or email',
                          hintText: '0911---',
                          hintStyle:
                          TextStyle(fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none),
                      // spaceBetweenSelectorAndTextField: double.infinity,
                    ))),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  maxLength: 20,
                  obscureText: _passwordVisible,
                  validator: validatePassword,
                  controller: passController,
                  decoration:  InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue.shade100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade200),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // labelText: 'Password',
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 17),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: signUpButton(context)
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: const TextStyle(color: Colors.grey), children: [
                  const TextSpan(text: 'Do you have an account ? ', style: TextStyle(fontSize: 17)),
                  TextSpan(
                    text: 'Sign in',
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 17
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  signUpButton(context) {
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
                Colors.green.shade800
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

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return '''       Password is required.''';
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

String? validatefullname(String? formFullname) {
  if (formFullname == null || formFullname.isEmpty) {
    return '''       Please enter your Name.''';
  }

  String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{3,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formFullname)) {
    return '''
      Name must be at least 3 characters,
      include an uppercase letter and number
      ''';
  }

  return null;
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return '           E-mail address is required.';
  }

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return '''Invalid E-mail Address format.''';

  return null;
}
