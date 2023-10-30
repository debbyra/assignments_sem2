import 'package:flutter/material.dart';
import 'category.dart';
import 'category_item.dart';
import 'product.dart';
// import 'product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // the categories and ther products added
  final List<Category> categories = [
    Category(
      title: 'Electronics',
      description: 'Explore the latest gadgets and electronics.',
      imageUrl:
          'assets/images/category1.jpg', // Add your image file to the assets folder
          products: [
    Product(name: 'Smartphone', description: 'Latest smartphone model', price: 599.99),
    Product(name: 'Laptop', description: 'High-performance laptop', price: 999.99),
    Product(name: 'Headphones', description: 'High-perfomance headphones', price: 599.99),
    Product(name: 'Ipad', description: 'Latest portable Ipad', price: 999.99),
    // Add more products as needed
  ],
    ),
    Category(
      title: 'Clothing',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category2.jpg', // Add your image file to the assets folder
          products: [
    Product(name: 'Jeans', description: 'Most trendy jeans', price: 599.99),
    Product(name: 'Skirts', description: 'Short linen skirts', price: 999.99),
    Product(name: 'Sweaters', description: 'Cozy sweaters', price: 599.99),
    Product(name: 'Dresses', description: 'Mini-dresses', price: 999.99),
    // Add more products as needed
  ],
    ),
    Category(
      title: 'Groceries',
      description: 'Shop all groceries for your kitchen. ',
      imageUrl:
          'assets/images/category3.jpg', // Add your image file to the assets folder
          products: [
    Product(name: 'Curries', description: 'Locally made curries', price: 599.99),
    Product(name: 'Vegetables', description: 'Fresh veggies for all purposes', price: 999.99),
    Product(name: 'Bread', description: 'Local and imported from Italy', price: 599.99),
    Product(name: 'Cereal', description: 'Fresh cereal well packaged', price: 999.99),
    // Add more products as needed
  ],
    ),
    Category(
      title: 'Accessories',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category4.jpg', // Add your image file to the assets folder
          products: [
    Product(name: 'Smartphone', description: 'Latest smartphone model', price: 599.99),
    Product(name: 'Laptop', description: 'High-performance laptop', price: 999.99),
    Product(name: 'Laptop', description: 'High-performance laptop', price: 999.99),
    Product(name: 'Laptop', description: 'High-performance laptop', price: 999.99),

    // Add more products as needed
  ],
    ),
    Category(
      title: 'Drinks',
      description: 'Discover trendy and fashionable clothing styles.',
      imageUrl:
          'assets/images/category5.jpg', // Add your image file to the assets folder
          products: [
    Product(name: 'Smartphone', description: 'Latest smartphone model', price: 599.99),
    Product(name: 'Laptop', description: 'High-performance laptop', price: 999.99),
    // Add more products as needed
  ],
    ),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //removed the new key word
        elevation: 0.1,
        backgroundColor: Colors.blueAccent,
        title: const Text("DW-Collectionz"),
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
              onPressed: () {}) //removed the new keyword
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

            //body

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
                onTap: () {},
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
//code one

      body: ListView.builder(
        itemCount: categories.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            // Return the text header for index 0
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
          // Subtract 1 from index to get the correct category index
          return CategoryItem(category: categories[index - 1],);
        },
        padding: const EdgeInsets.all(8.0),
      ),

    );
  }
}
