import 'package:flutter/material.dart';
class helpCenter extends StatelessWidget {
  const helpCenter({super.key});

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