import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  // ignore: prefer_const_constructors_in_immutables
  ProductDetailScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text("Details about $productName"),
      ),
    );
  }
}
