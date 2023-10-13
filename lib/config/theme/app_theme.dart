import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,

    fontFamily: 'Monstserrat',

    colorScheme: const ColorScheme.light(
      primary: Color(0XFF2FA0CE),
      primaryContainer: Color(0XFFD5ECF5),
      outline: Color(0XFF8D8D8D),
      outlineVariant: Color(0XFFC6C6C6),
      onSurfaceVariant: Color(0XFF434343),
      background: Color(0XFFF6FCFF),
    ),
    
  );
}