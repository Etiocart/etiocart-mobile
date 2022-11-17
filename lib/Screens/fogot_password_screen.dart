import 'package:ethiocart/Screens/screens.dart';
import 'package:flutter/material.dart';
import '../models/forgot_password.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Text('Forgot password?');
            }),
          );
        },
        child: const Text(
          'Forgot password ?',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontFamily: 'SFCompact',
          ),
        ),
      ),
    );
  }
}
