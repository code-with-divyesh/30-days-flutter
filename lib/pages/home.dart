// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert";

import "package:catlogapp/utils/routes.dart";
import "package:catlogapp/widgets/home_widgets/catalogHeader.dart";
import "package:catlogapp/widgets/home_widgets/catalog_list.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:velocity_x/velocity_x.dart";

import "package:catlogapp/widgets/drawer.dart";
import "package:catlogapp/model/catlog.dart";
import "package:catlogapp/themes/themes.dart";
import 'package:catlogapp/widgets/item_widget.dart';

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
      floatingActionButton: FloatingActionButton(
          child: Icon(CupertinoIcons.cart),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          }),
      backgroundColor: MyTheme.creamcolor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogueHeader(),
              if (CatalogItems.products != null &&
                  CatalogItems.products!.isNotEmpty)
                CatalogueList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
