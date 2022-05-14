import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme:
          const AppBarTheme(color: primary, centerTitle: true, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme:
          const AppBarTheme(color: primary, centerTitle: true, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
