import "package:catlogapp/pages/home.dart";
import "package:flutter/material.dart";
import 'package:catlogapp/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

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
      // initialRoute: "/home",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => myHome(),
        "/loginpage": (context) => Login_page(),
      },
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
    );
  }
}
