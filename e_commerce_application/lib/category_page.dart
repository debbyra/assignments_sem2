import 'package:flutter/material.dart';
import 'category.dart';
import 'package:e_commerce_application/product.dart';
import 'package:e_commerce_application/cart.dart';

class CategoryPage extends StatelessWidget {
  final Category category;
  final Cart cart; // Pass the Cart instance to the CategoryPage

  const CategoryPage({required this.category, required this.cart});

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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //removed the new key word
        elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: Text(
          category.title,
          style: const TextStyle(fontSize: 28.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                _showCartDialog(context);
              }) //removed the new keyword
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // the category image
            Image.asset(
              category.imageUrl,
              height: 200, // Adjust the height
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            // Display the category description
            Text(
              category.description,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            // add more details
            const SizedBox(height: 16),
            // List of Products
            const Text(
              'Products:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: category.products.length,
                itemBuilder: (context, index) {
                  Product product = category.products[index];
                  return ListTile(
                    title: Text(product.name,style:const  TextStyle(color: Colors.black),),
                    //more details
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description: ${product.description}',style:const  TextStyle(color: Colors.black),),
                        Text('Price: \$${product.price.toString()}',style:const  TextStyle(color: Colors.black),),
                      ],
                      
                    ),

                    leading: Image.asset(
                      product.imageUrl,
                      width: 80, // Adjust the width as needed
                      height: 90, // Adjust the height as needed
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                    // onTap to handle product tap
                    onTap: () {
                      _addToCart(product);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 196, 207, 211),
    );
  }
}
