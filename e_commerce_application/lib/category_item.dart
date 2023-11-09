import 'package:flutter/material.dart';
import 'category.dart'; // Import the Category class
// import 'product_widget.dart'; // Import the ProductList widget
// import 'product.dart'; // Import the Product model

class CategoryItem extends StatelessWidget {
  
  final Category category;
  const CategoryItem({required this.category});
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //    Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ProductList(products: category.products),
      //     ),
      //   );
      // },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(
              category.imageUrl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    category.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    category.description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
