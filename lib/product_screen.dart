import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductScreen extends StatelessWidget {
  final List<String> products = ["Product 1", "Product 2", "Product 3"];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.pie_chart),
            onPressed: () {
              // Navigator.push(context MaterialPageRoute(builder: (context) => ChartScreen()));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(productName: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
