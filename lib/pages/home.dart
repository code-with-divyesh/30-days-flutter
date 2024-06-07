import "package:catlogapp/drawer/drawer.dart";
import "package:catlogapp/model/catlog.dart";
import "package:flutter/material.dart";
import 'package:catlogapp/drawer/item_widget.dart';

class myHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => CatalogItems.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CatlogApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummylist[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
