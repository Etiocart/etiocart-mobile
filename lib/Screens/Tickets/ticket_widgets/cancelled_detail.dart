import 'package:flutter/material.dart';

class CancelledTicket extends StatelessWidget {
  const CancelledTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        foregroundColor: Colors.teal.shade800,
        backgroundColor: Colors.white,
        title: Text('Cancelled'),
      ),
      body: Container(child: Text('cancelled Tickets Page '),),);
  }
}
