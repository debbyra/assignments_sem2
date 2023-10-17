import 'product.dart';

class Category {
  final String title;
  final String description;
  final String imageUrl;
  final List<Product> products; // Add a products property of type List<Product>

  Category({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.products, // Add products to the constructor
  });
}
