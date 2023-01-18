import 'dart:ui';

import 'package:flutter/material.dart';

class ETheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: isDarkTheme ? Color(0xFFCEE6D8) : Color(0xFF374b3f),
      ),
      cardColor: isDarkTheme ? Color(0xFF384B3F) : Color(0xffCEE6D5),
      scaffoldBackgroundColor: isDarkTheme ? Color(0xFF233029) : Colors.white,
      primaryColor: isDarkTheme ? Colors.white : Colors.black,
      backgroundColor: isDarkTheme ? Color(0xFF394C40) : Colors.white,

      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
      // ));
    );
  }
}
