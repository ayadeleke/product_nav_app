// ignore: file_names
import 'package:flutter/material.dart';
import 'product.dart';
import 'product_box.dart';
import 'ProductPage.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);
  final String title;
  final items = Product.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child:
                  ProductBox(item: items[index], key: ValueKey(items[index])),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                        item: items[index], key: ValueKey(items[index])),
                  ),
                );
              },
            );
          },
        ));
  }
}
