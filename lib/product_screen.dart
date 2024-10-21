import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductScreen extends StatelessWidget {
  final List<String> products = ["Product 1", "Product 2", "Product 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          IconButton(
            icon: Icon(Icons.pie_chart),
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
