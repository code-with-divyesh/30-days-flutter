import "package:catlogapp/themes/themes.dart";
import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.make(),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
