// ignore_for_file: prefer_const_constructors,
//prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';

class sendEmail extends StatelessWidget {
  sendEmail({super.key});

  // final email = 'segnih36@gmail.com';
  // final smtpServer =gmailSas,
  // final message = Message();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('send mail'),
              ),
            ),
          ],
        ),
      ),
    );


  }


}
