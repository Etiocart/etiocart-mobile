import 'package:flutter/material.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

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