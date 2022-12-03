import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datePicker extends StatefulWidget {
   datePicker({Key? key}) : super(key: key);

  @override
  State<datePicker> createState() => _datePickerState();
}

class _datePickerState extends State<datePicker> {
  DateTime now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    DateTime date = new DateTime(now.year, now.month, now.day);
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Birth Date'),
          content: datePickerWid(),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: Text('${date.year}/${date.month}/${date.day}',),
    );
  }


  Widget datePickerWid(){
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return Container(
      height: 200,
      width: 400,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: now,
        onDateTimeChanged: (dateTime) {
          setState(() {
            date = dateTime;
          });
        },
      ),
    );
  }
}



