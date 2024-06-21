import 'package:catlogapp/model/catlog.dart';
import 'package:catlogapp/pages/home.dart';
import 'package:catlogapp/pages/home_detail.dart';
import 'package:catlogapp/widgets/home_widgets/catalogImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogItems.products?.length,
      itemBuilder: (context, index) {
        final catalogue = CatalogItems.products![index];
        return InkWell(
          child: CatalogueItem(catalogue: catalogue),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homeDetailPage(catalog: catalogue),
              ),
            );
          },
        );
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
          Hero(
              tag: Key(catalogue.id.toString()),
              child: cataLogImage(image: catalogue.image)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalogue.name.text.lg.bold.make(),
                10.heightBox,
                catalogue.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  // buttonPadding: Vx.m4,
                  children: [
                    "\$${catalogue.price}".toString().text.xl.bold.make(),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.deepPurple),
                        onPressed: () {
                          print("${catalogue.name} clicked");
                        },
                        child: "Cart".text.medium.color(Colors.white).make()),
                  ],
                ).pOnly(right: 2.0),
              ],
            ),
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }

  getById(int id) {}
}
