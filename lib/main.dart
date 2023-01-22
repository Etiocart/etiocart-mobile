// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:ethiocart/Screens/Foryou/foryou.dart';
import 'package:ethiocart/Screens/theme_Provider/theme_provider.dart';
import 'package:ethiocart/Screens/theme_Provider/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Screens/Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  // void getCurrentAppTheme() async {
  //   themeChangeProvider.darkTheme =
  //       await themeChangeProvider.darkThemePreferences.getTheme();
  // }

  // @override
  // void initState() {
  //   getCurrentAppTheme();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white
      ));
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          })
        ],
        child: Consumer<DarkThemeProvider>(
          builder: (context, value, child) {
            return MaterialApp(
              title: 'Main Page',
              // theme: ETheme.themeData(themeChangeProvider.darkTheme, context),
              // theme: ThemeData(

              //   visualDensity: VisualDensity.adaptivePlatformDensity,
              //   inputDecorationTheme: const InputDecorationTheme(
              //     border: InputBorder.none,
              //     // filled: true,
              //     // fillColor: Color(0xffeeeeee),
              //     hintStyle: TextStyle(
              //       fontSize: 15.0,
              //       color: Colors.black45,
              //       fontFamily: 'SFPro',
              //     ),
              //   ),
              //   colorScheme: ColorScheme.fromSwatch()
              //       .copyWith(secondary: Colors.teal.shade600),
              // ),
              home: BottomNavBar(),
              // Setting_page(),
              // HomeFull(),
              // profileView(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      );
    }
  }
}
