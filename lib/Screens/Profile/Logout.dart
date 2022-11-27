import 'package:flutter/material.dart';

class logOut extends StatelessWidget {
  const logOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: Column(
      children: [
        Text('Logout Page'),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
            child: const Text('Go back!'),
          ),
        ),
      ],
    ),);
  }
}