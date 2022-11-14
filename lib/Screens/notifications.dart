import 'package:ethiocart/Screens/screens.dart';
import 'package:flutter/material.dart';
import '../models/forgot_password.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return forgot_password();
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
