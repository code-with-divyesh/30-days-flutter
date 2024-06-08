import "dart:convert";

import "package:catlogapp/drawer/drawer.dart";
import "package:catlogapp/model/catlog.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:catlogapp/drawer/item_widget.dart';
import "package:flutter/services.dart";

class myHome extends StatefulWidget {
  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodeData = jsonDecode(catalogjson);

    var productData = decodeData["products"];
    CatalogItems.products =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CatlogApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            (CatalogItems.products != null && CatalogItems.products!.isNotEmpty)
                ? ListView.builder(
                    // itemCount: CatalogueModel.items.length,
                    itemCount: CatalogItems.products?.length,
                    itemBuilder: (context, index) => ItemWidget(
                      item: CatalogItems.products![index],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: MyDrawer(),
    );
  }
}
