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

  @override
  void iniState() {
    // var _passwordVisible = false;
    super.initState();

    // String phoneNumber =  '+234 500 500 5005';
    // PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);
    // String parsableNumber = number.parseNumber();
    // `controller reference`.text = parsableNumber
  }

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    var dotRegister = () {
      // print('on dotRegister');

      final form = _formKey.currentState;
      if (form!.validate()) {
        form.save();

        // print(form);
      }
    };

    return Form(
      key: _formKey,
      // autovalidateMode: _validate,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // padding: const EdgeInsets.symmetric(vertical: 3),
          children: [
            // const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade50),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100),
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
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade50),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100),
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
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade50),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade100),
                    child: InternationalPhoneNumberInput(
                      inputDecoration: InputDecoration(),
                      initialValue:
                          PhoneNumber(isoCode: 'ET', dialCode: '+251'),
                      onInputChanged: (PhoneNumber value) {},
                      hintText: 'Phonenumber',
                      // spaceBetweenSelectorAndTextField: double.infinity,
                    ))),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade50),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100),
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
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
            SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: 'Do you have an account ? '),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
  if (formPassword == null || formPassword.isEmpty)
    return '''       Password is required.''';

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

String? validatefullname(String? formFullname) {
  if (formFullname == null || formFullname.isEmpty)
    return '''       Please enter your Name.''';

  String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{3,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formFullname))
    return '''
      Name must be at least 3 characters,
      include an uppercase letter and number
      ''';

  return null;
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return '           E-mail address is required.';

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return '''Invalid E-mail Address format.''';

  return null;
}
