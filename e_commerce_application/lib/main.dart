import 'package:e_commerce_application/login.dart';
import 'package:flutter/material.dart';

// my own imports
import 'on_boarding_screen.dart';
import 'on_boarding_screen_two.dart';
import 'home_page.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set your initial route here
      routes: {
        '/': (context) =>
            const OnBoardingScreenOne(), // Define the first screen route
        '/second': (context) =>
            const OnBoardingScreenTwo(), // Define the second screen route
        '/third': (context) => HomePage(), //Define the home page route

        '/fifth':(context) =>  LogIn(),
        '/sixth':(context) =>  SignUp()
      },
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:e_commerce_application/my_carousel.dart';

// void main() => runApp(MyApp());

// class Product {
//   final String name;
//   final String imageUrl;

//   Product({required this.name, required this.imageUrl});
// }

// class Category {
//   final String name;

//   Category({required this.name});
// }

// class MyApp extends StatelessWidget {
//   final List<Product> products = [
//     Product(name: 'Product 1', imageUrl: 'assets/images/category1.jpg'),
//     Product(name: 'Product 2', imageUrl: 'assets/images/category2.jpg'),
//     // Add more products as needed
//   ];

//   final List<Category> categories = [
//     Category(name: 'Category 1'),
//     Category(name: 'Category 2'),
//     // Add more categories as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Shopping App'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Carousel Section
//               Container(
//                 height: 200,
//                 child:  MyCarousel(), // Add your carousel widget here
//               ),
//               // Categories Section
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Categories',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 10),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: categories
//                             .map((category) => Padding(
//                                   padding: const EdgeInsets.only(right: 16),
//                                   child: Chip(
//                                     label: Text(category.name),
//                                   ),
//                                 ))
//                             .toList(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Product List Section
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Products',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 10),
//                     Column(
//                       children: products
//                           .map((product) => ListTile(
//                                 leading: CircleAvatar(
//                                   backgroundImage: AssetImage(product.imageUrl),
//                                 ),
//                                 title: Text(product.name),
//                                 onTap: () {
//                                   // Handle product tap
//                                 },
//                               ))
//                           .toList(),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
