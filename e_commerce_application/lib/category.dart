import 'package:e_commerce_application/product.dart';

class Category {
  final String title;
  final String description;
  final String imageUrl;
  final List<Product> products; // Added a products property of type List<Product>

  Category({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.products, // Added products to the constructor
  });
}
