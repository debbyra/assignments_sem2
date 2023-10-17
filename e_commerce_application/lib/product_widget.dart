import 'package:flutter/material.dart';
import 'product.dart'; // Import the Product model

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
