import 'package:catlogapp/themes/themes.dart';
// import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogueHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Vx.hexToColor(code)
      children: [
        "Catalogue App".text.xl5.bold.color(context.theme.hintColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
