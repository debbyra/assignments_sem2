import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductDetailsPage(title: 'Product Details'),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 247, 247),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 9, 65),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 253, 252, 252),
              fontWeight: FontWeight.bold),
          title: Text(title),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: <Widget>[
              Product(
                  name: "Butterfly-Top",
                  description: "Butterfly top fit for the care-free summer",
                  price: "UGX: 35,000",
                  image: "safeboda.png")
            ]));
  }
}

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        height: 120,
        child: GestureDetector(
            onTap: () {
              _showDialog(context);
            },
            child: Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/" + this.image,
                      width: 140,
                    ),
                    Expanded(
                      child: Container(
                          // padding: EdgeInsets.all(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                            Text("Name: " + this.name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Description: " + this.description),
                            Text("Price: " + this.price.toString()),
                          ])),
                    )
                  ]),
            )));
  }

  void _showDialog(BuildContext context) {
// flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog

        return AlertDialog(
          title: new Text("Message"),
          content: new Text("Well Done!"),
          actions: <Widget>[
            new TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
