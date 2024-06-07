import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      UserAccountsDrawerHeader(
        accountName: Text(
          "GANDHI DIVYESH",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        accountEmail: Text(
          "gandhidivyesh09@gmail.com",
          style: TextStyle(fontSize: 18),
        ),
        currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.purple.shade300, child: Text("DG")),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textScaleFactor: 1.25,
        ),
      ),
      ListTile(
        leading: Icon(CupertinoIcons.profile_circled),
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textScaleFactor: 1.25,
        ),
      ),
      ListTile(
        leading: Icon(CupertinoIcons.mail),
        title: Text(
          "Mail me",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textScaleFactor: 1.25,
        ),
      ),
    ]));
  }
}
