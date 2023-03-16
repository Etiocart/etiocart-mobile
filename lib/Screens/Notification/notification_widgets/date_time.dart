import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
  Widget dateTime() {
    String dateOBDCommand = '2021-07-13T13:15:54.000000Z';
    DateTime date = DateTime.parse(dateOBDCommand);
    String result = DateFormat('yyyy-MM-dd H:m:s').format(date);
    return Text(result.toString(),
        style: const TextStyle(
            fontFamily: 'SFPro',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54));
  }