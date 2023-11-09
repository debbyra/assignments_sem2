import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyCarousel extends StatelessWidget {
  final List<String> images = [
    'assets/images/category1.jpg',
    'assets/images/category2.jpg',
    'assets/images/category3.jpg',
    'assets/images/category4.jpg',
    'assets/images/category5.jpg',
    'assets/images/category1.jpg',
    'assets/images/category2.jpg',
    'assets/images/category3.jpg',
    'assets/images/category4.jpg',
    'assets/images/category5.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {
          // Handle page change
        },
      ),
    );
  }
}
