import 'package:e_commerce_application/product_widget.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'cart.dart';
import 'product.dart';
import 'package:e_commerce_application/my_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Cart _cart = Cart(); //  an instance of the Cart class

  final List<Product> products = [
    Product(
      name: 'Headsocks',
      description: 'Locally made ',
      price: 599.99,
      imageUrl: 'assets/images/category1.jpg',
    ),
    Product(
      name: 'Hoodies',
      description: 'Cute hoodies for all purposes',
      price: 999.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: 'Thread',
      description: 'Local and imported from Italy',
      price: 599.99,
      imageUrl: 'assets/images/category3.jpg',
    ),
    Product(
      name: 'Arm warmers',
      description: ' well packaged for winter',
      price: 999.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    
    Product(
      name: 'Headphone covers',
      description: 'High-perfomance headphones covers',
      price: 599.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: 'Ipad pouch',
      description: 'Latest portable Ipad',
      price: 999.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: ' mesh',
      description: 'Most trendy mesh styles',
      price: 599.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: 'Skirts',
      description: 'Short  skirts',
      price: 999.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: 'Sweaters',
      description: 'Cozy sweaters',
      price: 599.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    Product(
      name: 'Dresses',
      description: 'Mini-dresses',
      price: 999.99,
      imageUrl: 'assets/images/category2.jpg',
    ),
    // Add more products as needed
  ];

  // the categories 
  final List<Category> categories = [
    Category(
      title: 'Head covers',
      description: 'Explore the latest.',
      imageUrl:
          'assets/images/category1.jpg', // Add your image file to the assets folder
    ),
    Category(
      title: 'Skirts and undies',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category2.jpg', // Add your image file to the assets folder
    ),
    Category(
      title: 'Shawls and wraps',
      description: 'Shop all for your closet. ',
      imageUrl:
          'assets/images/category3.jpg', // Add your image file to the assets folder
    ),
    Category(
      title: 'Accessories',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category4.jpg', // Add your image file to the assets folder
    ),
    Category(
      title: 'Tops',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category5.jpg', // Add your image file to the assets folder
    ),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //removed the new key word
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
          "DW-Collectionz",
          style: TextStyle(fontSize: 28.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                _showCartDialog(context);
              }) //removed the new keyword
        ],
      ),

      drawer: Drawer(
        //removed new key word
        child: ListView(
          //removed new key word
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              //removed new key word
              accountName: const Text('Debby Brasky'),
              accountEmail: const Text('deborahrahj20@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  //removed new key word
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  //removed new
                  color: Colors.blueAccent),
            ),

            //drawer body

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Home"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("My Account"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Orders"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                  ),
                )),

            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductList(
                        products: [],
                      ),
                    ),
                  );
                },
                child: const ListTile(
                  title: Text("Products"),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.black,
                  ),
                )),

            const Divider(),

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Settings"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("About"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                ))
          ],
        ),
      ),

//body of homepage starts here

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Section
            SizedBox(
              height: 200,
              child: MyCarousel(), // carousel widget here
            ),

            // Categories Section
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories
                          .map((category) => Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Chip(
                                  label: Text(category.title),
                              //     onTap: () {
                              //   // Handle product tap
                              //   _addToCart(product);
                              // },
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),

            // Product List Section Tap to add to cart
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: products
                        .map((product) => ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(product.imageUrl),
                              ),
                              title: Text(product.name),
                              onTap: () {
                                // Handle product tap
                                _addToCart(product);
                              },
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 199, 234, 251),
    );
  }

  // Function to add a product to the cart
  void _addToCart(Product product) {
    setState(() {
      _cart.addToCart(product);
    });
  }

  // Function to show a dialog displaying the cart content
  void _showCartDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Shopping Cart'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (Product item in _cart.items)
                  ListTile(
                    title: Text(item.name),
                    subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                  ),
                const Divider(),
                ListTile(
                  title: const Text('Total:'),
                  subtitle: Text('\$${_cart.total.toStringAsFixed(2)}'),
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
                  _cart.clearCart();
                  Navigator.pop(context);
                },
                child: const Text('Clear Cart'),
              ),
            ],
          );
        });
  }
}





// body: ListView.builder(
//         itemCount: categories.length + 1,
//         itemBuilder: (context, index) {
//           if (index == 0) {
//             // Return the text header for index 0
//             return const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 'Categories',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             );
//           }
//           // Subtract 1 from index to get the correct category index
//           return CategoryItem(
//             category: categories[index - 1],
//           );
//         },
//         padding: const EdgeInsets.all(8.0),
//       ),