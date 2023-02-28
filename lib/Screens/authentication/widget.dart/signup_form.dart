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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE0EBE3)),
                child: TextFormField(
                  autofocus: false,
                  // obscureText: true,
                  validator: validatefullname,
                  controller: fullController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.teal,
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Full Name',
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE0EBE3)),
                child: TextFormField(
                  autofocus: false,
                  // obscureText: true,
                  validator: validateEmail,
                  controller: emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      // labelText: 'Enter username or email',
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE0EBE3)),
                    child: InternationalPhoneNumberInput(
                      inputDecoration: const InputDecoration(),
                      initialValue:
                          PhoneNumber(isoCode: 'ET', dialCode: '+251'),
                      onInputChanged: (PhoneNumber value) {},
                      hintText: 'Phonenumber',
                      textStyle: const TextStyle(fontSize: 18),
                      // spaceBetweenSelectorAndTextField: double.infinity,
                    ))),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE0EBE3)),
                child: TextFormField(
                  obscureText: _passwordVisible,
                  validator: validatePassword,
                  controller: passController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: Colors.teal,
                    ),
                    // labelText: 'Password',
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 18),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.teal,
                      ),
                    ),
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
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade800,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
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
                  const TextSpan(text: 'Do you have an account ? ', style: TextStyle(fontSize: 18)),
                  TextSpan(
                    text: 'Sign in',
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 18
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
