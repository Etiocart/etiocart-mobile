// ignore_for_file: prefer_const_constructors, file_names
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class for_you_page extends StatelessWidget {
  const for_you_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'FYP',
              style: TextStyle(fontSize: 30, fontFamily: 'SFCompact'),
            ),
          ),
          Categories(),
        ],
      ),
    );
  }
}

// we need a stateful widget for our categoriesTab
//widget since we are retrieving dynamic data
