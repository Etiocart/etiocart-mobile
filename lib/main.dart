import 'package:flutter/material.dart';
import 'Screens/Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'Gotham',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: chooseTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
