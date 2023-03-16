
import 'package:flutter/material.dart';

class ETheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: isDarkTheme ? const Color(0xFFCEE6D8) : const Color(0xFF233029),
      ),
      cardColor: isDarkTheme ? const Color(0xFF384B3F) : const Color(0xffCEE6D5),
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xFF233029) : const Color(0xffE2EDE5),
      primaryColor: isDarkTheme ? Colors.white : Colors.black,
      backgroundColor: isDarkTheme ? const Color(0xFF394C40) : const Color(0xffCEE6D8),

      appBarTheme: const AppBarTheme(
        elevation: 0.0,
      ),
      // ));
    );
  }
}
