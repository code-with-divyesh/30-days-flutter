import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get LightTheme => ThemeData(
        cardColor: Colors.white,
        canvasColor: creamcolor,
        hintColor: darkbluishcolor,
        buttonTheme: ButtonThemeData(buttonColor: darkbluishcolor),
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static ThemeData get DarkTheme => ThemeData(
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkcreamcolor,
      buttonTheme: ButtonThemeData(buttonColor: lightbluishcolor),
      hintColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;

  static Color darkbluishcolor = Color(0xff403b58);
  static Color lightbluishcolor = Vx.indigo800;
}
