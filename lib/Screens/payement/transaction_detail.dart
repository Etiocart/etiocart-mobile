import 'package:flutter/material.dart';
class detailTransactions extends StatelessWidget {
  const detailTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        title: Text('Transactions', style: TextStyle(fontSize: 22),),
      ),

    );
  }
}

