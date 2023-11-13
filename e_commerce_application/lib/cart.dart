// import 'package:flutter/material.dart';
import 'package:e_commerce_application/product.dart';

class Cart {
final List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
  }

  void removeFromCart(Product product) {
    _items.remove(product);
  }

  void clearCart() {
    _items.clear();
  }

  double get total {
    return _items.fold(0.0, (total, product) => total + product.price);
  }

  int get itemCount => _items.length;
}

