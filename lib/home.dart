import "package:flutter/material.dart";

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatlogApp"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text("first day of day 30"),
      ),
      drawer: Drawer(),
    );
  }
}
