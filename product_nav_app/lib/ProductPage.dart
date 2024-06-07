// ignore: file_names
// ignore_for_file: unnecessary_this, prefer_const_constructors

import 'package:flutter/material.dart';
import 'product.dart';
import 'rating_box.dart';

class ProductPage extends StatelessWidget {
  final Product item;

  const ProductPage({required Key key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.item.name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/appimages/${this.item.image}",
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
              SizedBox(height: 16.0),
              Text(
                this.item.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                this.item.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Price: ${this.item.price}",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8.0),
              RatingBox(),
            ],
          ),
        ),
      ),
    );
  }
}
