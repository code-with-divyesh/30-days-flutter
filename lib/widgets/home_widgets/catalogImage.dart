import 'package:catlogapp/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
