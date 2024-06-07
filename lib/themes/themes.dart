import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get LightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));
  static ThemeData get DarkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}
