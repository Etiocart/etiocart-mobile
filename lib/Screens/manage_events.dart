import 'package:flutter/material.dart';
class manageEvents extends StatelessWidget {
  const manageEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(child: Container(child: Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        child: const Text('Go back!'),
      ),
    ),),);
  }
}
