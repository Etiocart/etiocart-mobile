import 'dart:ui';

import 'package:flutter/material.dart';

class ETheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: isDarkTheme ? Color(0xFFCEE6D8) : Color(0xFF233029),
      ),
      cardColor: isDarkTheme ? Color(0xFF384B3F) : Color(0xffCEE6D5),
      scaffoldBackgroundColor:
          isDarkTheme ? Color(0xFF233029) : Color(0xffE2EDE5),
      primaryColor: isDarkTheme ? Colors.white : Colors.black,
      backgroundColor: isDarkTheme ? Color(0xFF394C40) : Color(0xffCEE6D8),

      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
      // ));
    );
  }
}
