
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: 'home page',
      theme: ThemeData(
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
      home: details_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
