import 'package:ethiocart/Screens/register.dart';
import 'package:flutter/material.dart';
import 'Screens/screens.dart';

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
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Gotham',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xffeeeeee),
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.black45,
            fontFamily: 'SFCompactC',
          ),
        ),
      ),
      home: for_you_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
