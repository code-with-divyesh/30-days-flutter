import "package:catlogapp/drawer/drawer.dart";
import "package:flutter/material.dart";

class myHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CatlogApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("first day of day 30"),
      ),
      drawer: MyDrawer(),
    );
  }
}
