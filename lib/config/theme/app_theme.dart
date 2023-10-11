import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,

    colorScheme: const ColorScheme.light(
      primary: Color(0XFF2FA0CE),
      primaryContainer: Color(0XFFD5ECF5),
      secondary: Color(0XFF8D8D8D),
      secondaryContainer: Color(0XFFA9A9A9),
      background: Color(0xFFF6FCFF),
    ),
    
  );
}