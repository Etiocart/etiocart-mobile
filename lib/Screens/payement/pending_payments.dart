import 'package:flutter/material.dart';

class pendingPayment extends StatelessWidget {
  const pendingPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        title: Text('Pending', style: TextStyle(fontSize: 22),),
      ),
      body: PendingPayments(),
    );
  }

  Widget PendingPayments(){
    return Container(

    );
  }
}
