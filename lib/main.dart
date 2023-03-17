// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'dart:async';

import 'package:ethiocart/Screens/authentication/login.dart';
import 'package:ethiocart/Screens/theme_Provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Screens/Screens.dart';
import 'Screens/my_shared_pref.dart';
import 'Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //theme provider state management
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  //a boolean value to check if the value of log in is there
  //not for production code
  bool isLoggedIn = true;

  myAppState() {
    //goes into shared preference's instance method
    //shared instance is used to store data locally and
    // check for later logins
    MySharedPreferences.instance
        //checks the "isfirstRun" value's boolean value
        //then sets the state of the LoggedIn to a "value"
        // which is from the above line's retrieval
        .getBooleanValue("isfirstRun")
        .then((value) => setState(() {
              isLoggedIn = value;
            }));
  }

  @override
  Widget build(BuildContext context) {
    {
      //sets the foreground of the system(mobile) to dark style
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
      //used to set the overlay status bar color
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          systemNavigationBarColor: Colors.white));
      //set Forces the preferred orientation of the device to portrait mode
      //when landscape mode has been implemented this will be removed
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          })
        ],
        child: Consumer<DarkThemeProvider>(
          builder: (context, value, child) {
            return MaterialApp(
              theme: ThemeData(
                  //toset theme font for the entire app
                  fontFamily: ''),
              //checks if LoggedIn value is true
              //if the value is true it presents LoginScreen()
              //if not then the user has already logged in so it
              // takes it to the HomePage()
              home: MyHomePage(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      );
    }
  }
}

//this class is used for the rendering of the splash screen
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool isLoggedIn = true;

  myAppState() {
    //goes into shared preference's instance method
    //shared instance is used to store data locally and
    // check for later logins
    MySharedPreferences.instance
        //checks the "isfirstRun" value's boolean value
        //then sets the state of the LoggedIn to a "value"
        // which is from the above line's retrieval
        .getBooleanValue("isfirstRun")
        .then((value) => setState(() {
              isLoggedIn = value;
            }));
  }

  @override
  //only called once the stateful widget is inserted into the widget tree
  void initState() {
    super.initState();
    //we use a timer to show the splash screen
    Timer(
        Duration(seconds: 4),
        //after the 3 seconds the replacement is pushed into the screen
        () => Navigator.pushReplacement(
            context,
            //thus the replacement is BottomNavBar
            //as soon as the app starts and the stateful widget is inserted
            //the app will render  Container at line 107 and after 3 seconds
            // of showing that it will render the main screen BottomNavBar()
            MaterialPageRoute(
                builder: (context) =>
                    isLoggedIn ? LoginScreen() : BottomNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    //this is the splash screen container
    return Container(
        color: Colors.white,
        //splash screen file
        child: SplashScreen());
  }
}
