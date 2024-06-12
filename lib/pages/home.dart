// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:velocity_x/velocity_x.dart";

import "package:catlogapp/drawer/drawer.dart";
import "package:catlogapp/model/catlog.dart";
import "package:catlogapp/themes/themes.dart";
import 'package:catlogapp/drawer/item_widget.dart';

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
                CatalogueList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogueHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Vx.hexToColor(code)
      children: [
        "Catalogue App".text.xl5.bold.color(MyTheme.darkbluishcolor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogItems.products?.length,
      itemBuilder: (context, index) {
        final catalogue = CatalogItems.products![index];
        return CatalogueItem(catalogue: catalogue);
      },
    );
  }
}

class CatalogueItem extends StatelessWidget {
  final Item catalogue;
  const CatalogueItem({Key? key, required this.catalogue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          cataLogImage(image: catalogue.image),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogue.name.text.lg.bold.make(),
              catalogue.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                // buttonPadding: Vx.m4,
                children: [
                  "\$${catalogue.price}".toString().text.xl.bold.make(),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {
                        print("${catalogue.name} clicked");
                      },
                      child: "Buy".text.color(Colors.white).make()),
                ],
              ).pOnly(right: 4.0),
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}

class cataLogImage extends StatelessWidget {
  final String image;
  const cataLogImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      fit: BoxFit.contain,
    ).box.rounded.p8.color(MyTheme.creamcolor).make().p16().w40(context);
  }
}
