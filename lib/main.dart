import "package:catlogapp/pages/cart_page.dart";
import "package:catlogapp/pages/home.dart";
import "package:catlogapp/themes/themes.dart";
import "package:catlogapp/utils/routes.dart";
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
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => Login_page(),
        MyRoutes.HomeRoute: (context) => myHome(),
        MyRoutes.LoginRoute: (context) => Login_page(),
        MyRoutes.cartRoute: (context) => cartPage(),
      },
    );
  }
}
