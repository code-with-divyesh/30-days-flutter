import "package:catlogapp/pages/home.dart";
import "package:flutter/material.dart";
import 'package:catlogapp/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: myHome(),
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => myHome(),
        "/loginpage": (context) => Login_page(),
      },
    );
  }
}
