import 'package:flutter/material.dart';

class pendingPayment extends StatelessWidget {
  const pendingPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff428678),
        foregroundColor: Colors.white,
        title: Text('Pending'),
      ),

    );
  }
}
