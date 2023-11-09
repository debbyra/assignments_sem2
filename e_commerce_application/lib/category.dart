
class Category {
  final String title;
  final String description;
  final String imageUrl; // Added a products property of type List<Product>

  Category({
    required this.title,
    required this.description,
    required this.imageUrl, // Added products to the constructor
  });
}
