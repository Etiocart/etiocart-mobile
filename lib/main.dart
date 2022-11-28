// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      //or set color with: Color(0xFF0000FF)
      systemNavigationBarColor: Colors.white,
    ));
    return MaterialApp(
      title: 'Main Page',
      theme: ThemeData(
        fontFamily: 'SFPro',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          // filled: true,
          // fillColor: Color(0xffeeeeee),
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.black45,
            fontFamily: 'SFPro',
          ),
        ),
      ),
      //#list of screens#
      //tickets()
      //homeFull()
      //favoritesHome()
      //Notifications()
      //home_screen()
      //account_option(),
      //bottom_nav()
      //choose_theme()
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}
