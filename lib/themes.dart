import 'package:flutter/material.dart';

class WTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme:
          TextTheme(bodyMedium: TextStyle(fontSize: 16, color: Colors.black)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              backgroundColor: Colors.black87,
              textStyle: TextStyle(color: Colors.white))));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme:
          TextTheme(bodyMedium: TextStyle(fontSize: 16, color: Colors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              backgroundColor: Colors.white,
              textStyle: TextStyle(color: Colors.black))));
}
