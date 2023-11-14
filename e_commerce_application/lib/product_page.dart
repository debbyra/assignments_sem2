import 'package:flutter/material.dart';
import 'product.dart'; // Assuming you have a Product class defined
import 'cart.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products;
  final Cart cart; // Pass the Cart instance to the ProductsPage

  const ProductsPage({required this.products, required this.cart});

  // Function to add a product to the cart
  void _addToCart(Product product) {
    cart.addToCart(product);
  }

  void _removeFromCart(Product product) {
    cart.removeFromCart(product);
  }

  void _showCartDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Shopping Cart'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (Product item in cart.items)
                ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                  trailing: TextButton(
                    onPressed: () {
                      _removeFromCart(item);
                      Navigator.pop(context);
                    },
                    child: const Text('Remove'),
                  ),
                ),
              const Divider(),
              ListTile(
                title: const Text('Total:'),
                subtitle: Text('\$${cart.total.toStringAsFixed(2)}'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () {
                cart.clearCart();
                Navigator.pop(context);
              },
              child: const Text('Clear Cart'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'DW-Products',
          style: TextStyle(fontSize: 28.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              _showCartDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // List of Products
            const Text(
              'Products:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  Product product = products[index];
                  return Card(
                    child: InkWell(
                      onTap: () {
                        _addToCart(product);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            product.imageUrl,
                            width: double.infinity,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          Text(product.name),
                          const SizedBox(height: 4),
                          Text('\$${product.price.toString()}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
