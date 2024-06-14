// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:catlogapp/themes/themes.dart';
import 'package:catlogapp/widgets/home_widgets/catalogImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:catlogapp/model/catlog.dart';

class homeDetailPage extends StatelessWidget {
  final Item catalog;
  const homeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          // buttonPadding: Vx.m4,
          children: [
            "\$${catalog.price}".toString().text.xl4.red800.make(),
            ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    onPressed: () {
                      print("${catalog.name} clicked");
                    },
                    child: "Buy".text.xl2.color(Colors.white).make())
                .wh(110, 50),
          ],
        ).p8(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3.bold.make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  ],
                ).p32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
