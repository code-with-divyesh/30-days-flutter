import "package:catlogapp/model/cartmodel.dart";
import "package:catlogapp/themes/themes.dart";
import "package:flutter/cupertino.dart";
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
        body: Column(
          children: [
            cartItemList(),
            Divider(),
            cartTotal(),
          ],
        ));
  }
}

class cartItemList extends StatelessWidget {
  const cartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return ListView.builder(
      itemCount: cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: Icon(Icons.remove_circle_sharp),
        title: cart.items[index].name.text.make(),
      ),
    ).p32().expand();
  }
}

class cartTotal extends StatelessWidget {
  const cartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.color(context.theme.hintColor).xl5.make(),
          SizedBox(
            width: 30,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buy not supported yet..".text.make()));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
            child: "Buy".text.xl.color(Colors.white).make(),
          ).wh(130, 60),
        ],
      ),
    );
  }
}
