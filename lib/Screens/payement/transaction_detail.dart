import 'package:flutter/material.dart';
class detailTransactions extends StatelessWidget {
  const detailTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff428678),
        foregroundColor: Colors.white,
        title: Text('Details'),
      ),

    );
  }
}

